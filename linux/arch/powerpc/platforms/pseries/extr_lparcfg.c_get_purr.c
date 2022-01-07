
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic64_t ;


 int ATOMIC64_INIT (int ) ;
 unsigned long atomic64_read (int *) ;
 int cpu_get_purr ;
 int on_each_cpu (int ,int *,int) ;

__attribute__((used)) static unsigned long get_purr(void)
{
 atomic64_t purr = ATOMIC64_INIT(0);

 on_each_cpu(cpu_get_purr, &purr, 1);

 return atomic64_read(&purr);
}
