
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ xen_pv_domain () ;

__attribute__((used)) static int xen_apic_probe_pv(void)
{
 if (xen_pv_domain())
  return 1;

 return 0;
}
