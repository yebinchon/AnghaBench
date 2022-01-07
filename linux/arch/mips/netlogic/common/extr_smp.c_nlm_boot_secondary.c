
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int picbase; } ;


 scalar_t__ __KSTK_TOS (struct task_struct*) ;
 int __sync () ;
 int cpu_logical_map (int) ;
 TYPE_1__* nlm_get_node (int ) ;
 int nlm_hwtid_to_node (int) ;
 unsigned long nlm_next_gp ;
 unsigned long nlm_next_sp ;
 int nlm_pic_send_ipi (int ,int,int,int) ;
 scalar_t__ task_thread_info (struct task_struct*) ;

int nlm_boot_secondary(int logical_cpu, struct task_struct *idle)
{
 uint64_t picbase;
 int hwtid;

 hwtid = cpu_logical_map(logical_cpu);
 picbase = nlm_get_node(nlm_hwtid_to_node(hwtid))->picbase;

 nlm_next_sp = (unsigned long)__KSTK_TOS(idle);
 nlm_next_gp = (unsigned long)task_thread_info(idle);


 __sync();
 nlm_pic_send_ipi(picbase, hwtid, 1, 1);

 return 0;
}
