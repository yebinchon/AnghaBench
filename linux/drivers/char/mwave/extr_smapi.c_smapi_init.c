
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMOS_READ (int) ;
 int EIO ;
 int ENXIO ;
 int PRINTK_1 (int ,char*) ;
 int PRINTK_2 (int ,char*,int) ;
 int PRINTK_ERROR (char*) ;
 int TRACE_SMAPI ;
 int g_usSmapiPort ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int smapi_init(void)
{
 int retval = -EIO;
 unsigned short usSmapiID = 0;
 unsigned long flags;

 PRINTK_1(TRACE_SMAPI, "smapi::smapi_init entry\n");

 spin_lock_irqsave(&rtc_lock, flags);
 usSmapiID = CMOS_READ(0x7C);
 usSmapiID |= (CMOS_READ(0x7D) << 8);
 spin_unlock_irqrestore(&rtc_lock, flags);
 PRINTK_2(TRACE_SMAPI, "smapi::smapi_init usSmapiID %x\n", usSmapiID);

 if (usSmapiID == 0x5349) {
  spin_lock_irqsave(&rtc_lock, flags);
  g_usSmapiPort = CMOS_READ(0x7E);
  g_usSmapiPort |= (CMOS_READ(0x7F) << 8);
  spin_unlock_irqrestore(&rtc_lock, flags);
  if (g_usSmapiPort == 0) {
   PRINTK_ERROR("smapi::smapi_init, ERROR unable to read from SMAPI port\n");
  } else {
   PRINTK_2(TRACE_SMAPI,
    "smapi::smapi_init, exit true g_usSmapiPort %x\n",
    g_usSmapiPort);
   retval = 0;

  }
 } else {
  PRINTK_ERROR("smapi::smapi_init, ERROR invalid usSmapiID\n");
  retval = -ENXIO;
 }

 return retval;
}
