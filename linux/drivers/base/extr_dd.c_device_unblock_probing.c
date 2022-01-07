
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int defer_all_probes ;
 int driver_deferred_probe_trigger () ;

void device_unblock_probing(void)
{
 defer_all_probes = 0;
 driver_deferred_probe_trigger();
}
