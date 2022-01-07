
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int bluetooth_power; } ;


 int sonypi_call1 (int) ;
 int sonypi_call2 (int,int) ;
 TYPE_1__ sonypi_device ;

__attribute__((used)) static void sonypi_setbluetoothpower(u8 state)
{
 state = !!state;

 if (sonypi_device.bluetooth_power == state)
  return;

 sonypi_call2(0x96, state);
 sonypi_call1(0x82);
 sonypi_device.bluetooth_power = state;
}
