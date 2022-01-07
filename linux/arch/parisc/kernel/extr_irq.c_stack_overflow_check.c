
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {unsigned long* gr; scalar_t__* sr; } ;
struct TYPE_4__ {int comm; } ;
struct TYPE_3__ {int kernel_stack_usage; int irq_stack_usage; } ;


 unsigned long IRQ_STACK_SIZE ;
 unsigned long STACK_MARGIN ;
 unsigned long THREAD_SIZE ;
 TYPE_2__* current ;
 scalar_t__ current_thread_info () ;
 int irq_stack_union ;
 TYPE_1__ irq_stat ;
 scalar_t__ likely (int) ;
 int panic (char*) ;
 unsigned int per_cpu (int ,int) ;
 int pr_emerg (char*,int ,unsigned long,unsigned long,unsigned long) ;
 int smp_processor_id () ;
 int sysctl_panic_on_stackoverflow ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void stack_overflow_check(struct pt_regs *regs)
{
}
