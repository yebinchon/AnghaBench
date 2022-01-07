
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xive_native_has_queue_state_support () ;

bool kvmppc_xive_native_supported(void)
{
 return xive_native_has_queue_state_support();
}
