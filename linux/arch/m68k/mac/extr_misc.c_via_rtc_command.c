
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int RTC_FLG_READ ;
 int VIA1B_vRTCClk ;
 int VIA1B_vRTCEnb ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 size_t vBufB ;
 int* via1 ;
 int via_rtc_recv () ;
 int via_rtc_send (int) ;

__attribute__((used)) static void via_rtc_command(int command, __u8 *data)
{
 unsigned long flags;
 int is_read;

 local_irq_save(flags);



 command = (command & ~3) | 1;



 via1[vBufB] = (via1[vBufB] | VIA1B_vRTCClk) & ~VIA1B_vRTCEnb;

 if (command & 0xFF00) {
  via_rtc_send((command & 0xFF00) >> 8);
  via_rtc_send(command & 0xFF);
  is_read = command & (RTC_FLG_READ << 8);
 } else {
  via_rtc_send(command);
  is_read = command & RTC_FLG_READ;
 }
 if (is_read) {
  *data = via_rtc_recv();
 } else {
  via_rtc_send(*data);
 }



 via1[vBufB] |= VIA1B_vRTCEnb;

 local_irq_restore(flags);
}
