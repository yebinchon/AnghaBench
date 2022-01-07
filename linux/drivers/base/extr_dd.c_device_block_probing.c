
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int defer_all_probes ;
 int wait_for_device_probe () ;

void device_block_probing(void)
{
 defer_all_probes = 1;

 wait_for_device_probe();
}
