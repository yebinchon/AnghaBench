
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int num_online_cpus () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function (void (*) (void*),void*,int) ;

__attribute__((used)) static inline void cacheop_on_each_cpu(void (*func) (void *info), void *info,
                                   int wait)
{
 preempt_disable();
 func(info);

 preempt_enable();
}
