
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rtl8366_smi {int cmd_read; int lock; } ;


 int rtl8366_smi_read_byte0 (struct rtl8366_smi*,scalar_t__*) ;
 int rtl8366_smi_read_byte1 (struct rtl8366_smi*,scalar_t__*) ;
 int rtl8366_smi_start (struct rtl8366_smi*) ;
 int rtl8366_smi_stop (struct rtl8366_smi*) ;
 int rtl8366_smi_write_byte (struct rtl8366_smi*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __rtl8366_smi_read_reg(struct rtl8366_smi *smi, u32 addr, u32 *data)
{
 unsigned long flags;
 u8 lo = 0;
 u8 hi = 0;
 int ret;

 spin_lock_irqsave(&smi->lock, flags);

 rtl8366_smi_start(smi);


 ret = rtl8366_smi_write_byte(smi, smi->cmd_read);
 if (ret)
  goto out;


 ret = rtl8366_smi_write_byte(smi, addr & 0xff);
 if (ret)
  goto out;


 ret = rtl8366_smi_write_byte(smi, addr >> 8);
 if (ret)
  goto out;


 rtl8366_smi_read_byte0(smi, &lo);

 rtl8366_smi_read_byte1(smi, &hi);

 *data = ((u32) lo) | (((u32) hi) << 8);

 ret = 0;

 out:
 rtl8366_smi_stop(smi);
 spin_unlock_irqrestore(&smi->lock, flags);

 return ret;
}
