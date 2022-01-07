
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDC_LAN_STATION_ID ;
 int PDC_LAN_STATION_ID_READ ;
 int PDC_LAN_STATION_ID_SIZE ;
 int __pa (int ) ;
 int mem_pdc_call (int ,int ,int ,unsigned long) ;
 int memcpy (char*,int ,int ) ;
 int memset (char*,int ,int ) ;
 int pdc_lock ;
 int pdc_result ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_lan_station_id(char *lan_addr, unsigned long hpa)
{
 int retval;
 unsigned long flags;

 spin_lock_irqsave(&pdc_lock, flags);
 retval = mem_pdc_call(PDC_LAN_STATION_ID, PDC_LAN_STATION_ID_READ,
   __pa(pdc_result), hpa);
 if (retval < 0) {

  memset(lan_addr, 0, PDC_LAN_STATION_ID_SIZE);
 } else {
  memcpy(lan_addr, pdc_result, PDC_LAN_STATION_ID_SIZE);
 }
 spin_unlock_irqrestore(&pdc_lock, flags);

 return retval;
}
