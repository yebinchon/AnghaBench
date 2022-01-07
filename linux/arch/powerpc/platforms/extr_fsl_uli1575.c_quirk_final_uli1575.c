
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int CMOS_WRITE (int ,int ) ;
 int RTC_24H ;
 int RTC_ALARM_DONT_CARE ;
 int RTC_CONTROL ;
 int RTC_SET ;
 int RTC_VALID ;
 int is_quirk_valid () ;
 int outb (int,int) ;
 int outb_p (int,int) ;

__attribute__((used)) static void quirk_final_uli1575(struct pci_dev *dev)
{
 if (!is_quirk_valid())
  return;

 outb(0xfa, 0x4d0);
 outb(0x1e, 0x4d1);


 CMOS_WRITE(RTC_SET, RTC_CONTROL);
 CMOS_WRITE(RTC_24H, RTC_CONTROL);


 CMOS_WRITE(0, RTC_VALID);

 outb_p(0x7c, 0x72);
 outb_p(RTC_ALARM_DONT_CARE, 0x73);

 outb_p(0x7d, 0x72);
 outb_p(RTC_ALARM_DONT_CARE, 0x73);
}
