
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int model; } ;


 int SONYPI_ACPI_ACTIVE ;



 scalar_t__ camera ;
 scalar_t__ fnkeyinit ;
 int outb (int,int) ;
 int sonypi_call2 (int,int ) ;
 int sonypi_camera_off () ;
 TYPE_1__ sonypi_device ;
 int sonypi_type1_dis () ;
 int sonypi_type2_dis () ;
 int sonypi_type3_dis () ;

__attribute__((used)) static int sonypi_disable(void)
{
 sonypi_call2(0x81, 0);
 if (camera)
  sonypi_camera_off();


 if (!SONYPI_ACPI_ACTIVE && fnkeyinit)
  outb(0xf1, 0xb2);

 switch (sonypi_device.model) {
 case 130:
  sonypi_type1_dis();
  break;
 case 129:
  sonypi_type2_dis();
  break;
 case 128:
  sonypi_type3_dis();
  break;
 }

 return 0;
}
