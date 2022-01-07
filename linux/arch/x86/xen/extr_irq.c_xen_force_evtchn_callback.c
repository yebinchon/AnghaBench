
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HYPERVISOR_xen_version (int ,int *) ;

void xen_force_evtchn_callback(void)
{
 (void)HYPERVISOR_xen_version(0, ((void*)0));
}
