
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int ldt; } ;
struct mm_struct {TYPE_1__ context; } ;
struct ldt_struct {int dummy; } ;


 int flush_ldt ;
 int mm_cpumask (struct mm_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int on_each_cpu_mask (int ,int ,struct mm_struct*,int) ;
 int smp_store_release (int *,struct ldt_struct*) ;

__attribute__((used)) static void install_ldt(struct mm_struct *mm, struct ldt_struct *ldt)
{
 mutex_lock(&mm->context.lock);


 smp_store_release(&mm->context.ldt, ldt);


 on_each_cpu_mask(mm_cpumask(mm), flush_ldt, mm, 1);

 mutex_unlock(&mm->context.lock);
}
