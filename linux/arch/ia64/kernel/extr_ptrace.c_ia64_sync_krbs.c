
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_RESTORE_RSE ;
 int clear_tsk_thread_flag (int ,int ) ;
 int current ;
 int do_sync_rbs ;
 int ia64_sync_kernel_rbs ;
 int unw_init_running (int ,int ) ;

void ia64_sync_krbs(void)
{
 clear_tsk_thread_flag(current, TIF_RESTORE_RSE);

 unw_init_running(do_sync_rbs, ia64_sync_kernel_rbs);
}
