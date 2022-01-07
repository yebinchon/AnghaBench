
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int icache_stale_mask; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int cpumask_t ;


 int cpumask_clear_cpu (unsigned int,int *) ;
 scalar_t__ cpumask_test_cpu (unsigned int,int *) ;
 int local_flush_icache_all () ;
 int smp_mb () ;
 unsigned int smp_processor_id () ;

__attribute__((used)) static inline void flush_icache_deferred(struct mm_struct *mm)
{
}
