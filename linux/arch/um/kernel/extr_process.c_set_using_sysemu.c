
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_set (int *,int) ;
 int sysemu_supported ;
 int using_sysemu ;

void set_using_sysemu(int value)
{
 if (value > sysemu_supported)
  return;
 atomic_set(&using_sysemu, value);
}
