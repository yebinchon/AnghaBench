
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ camera_power; } ;


 int SONYPI_CAMERA_MUTE_MASK ;
 int SONYPI_CAMERA_PICTURE ;
 int sonypi_call2 (int,int ) ;
 TYPE_1__ sonypi_device ;
 int sonypi_set (int ,int ) ;

__attribute__((used)) static void sonypi_camera_off(void)
{
 sonypi_set(SONYPI_CAMERA_PICTURE, SONYPI_CAMERA_MUTE_MASK);

 if (!sonypi_device.camera_power)
  return;

 sonypi_call2(0x91, 0);
 sonypi_device.camera_power = 0;
}
