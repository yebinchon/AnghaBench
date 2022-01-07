
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PA_SHUTDOWN ;
 int __raw_writeb (int,int ) ;

__attribute__((used)) static void landisk_power_off(void)
{
 __raw_writeb(0x01, PA_SHUTDOWN);
}
