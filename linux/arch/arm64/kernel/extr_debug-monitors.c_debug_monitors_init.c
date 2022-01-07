
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING ;
 int clear_os_lock ;
 int cpuhp_setup_state (int ,char*,int ,int *) ;

__attribute__((used)) static int debug_monitors_init(void)
{
 return cpuhp_setup_state(CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING,
     "arm64/debug_monitors:starting",
     clear_os_lock, ((void*)0));
}
