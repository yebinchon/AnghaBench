
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic64_t ;


 int SPRN_PURR ;
 int atomic64_add (int ,int *) ;
 int mfspr (int ) ;

__attribute__((used)) static void cpu_get_purr(void *arg)
{
 atomic64_t *sum = arg;

 atomic64_add(mfspr(SPRN_PURR), sum);
}
