
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_task_sleep_node {int wq; int cpu; scalar_t__ halted; int link; } ;


 int hlist_del_init (int *) ;
 int smp_send_reschedule (int ) ;
 int swake_up_one (int *) ;
 scalar_t__ swq_has_sleeper (int *) ;

__attribute__((used)) static void apf_task_wake_one(struct kvm_task_sleep_node *n)
{
 hlist_del_init(&n->link);
 if (n->halted)
  smp_send_reschedule(n->cpu);
 else if (swq_has_sleeper(&n->wq))
  swake_up_one(&n->wq);
}
