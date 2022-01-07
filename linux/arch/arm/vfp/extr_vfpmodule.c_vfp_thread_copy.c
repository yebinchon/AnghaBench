
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu; } ;
struct TYPE_4__ {TYPE_1__ hard; } ;
struct thread_info {TYPE_2__ vfpstate; } ;


 int NR_CPUS ;
 struct thread_info* current_thread_info () ;
 int vfp_sync_hwstate (struct thread_info*) ;

__attribute__((used)) static void vfp_thread_copy(struct thread_info *thread)
{
 struct thread_info *parent = current_thread_info();

 vfp_sync_hwstate(parent);
 thread->vfpstate = parent->vfpstate;



}
