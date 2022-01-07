
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mem; } ;
struct task {struct mm* mm; TYPE_1__ cpu; int * mem; } ;
struct mm {int mem; } ;



__attribute__((used)) static inline void task_set_mm(struct task *task, struct mm *mm) {
    task->mm = mm;
    task->mem = task->cpu.mem = &task->mm->mem;
}
