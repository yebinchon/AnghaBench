
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXP_1 ;
 int EXP_15 ;
 int EXP_5 ;
 unsigned long FIXED_1 ;
 int calc_load (int ,int ,unsigned long) ;
 unsigned long count_active_contexts () ;
 int * spu_avenrun ;

__attribute__((used)) static void spu_calc_load(void)
{
 unsigned long active_tasks;

 active_tasks = count_active_contexts() * FIXED_1;
 spu_avenrun[0] = calc_load(spu_avenrun[0], EXP_1, active_tasks);
 spu_avenrun[1] = calc_load(spu_avenrun[1], EXP_5, active_tasks);
 spu_avenrun[2] = calc_load(spu_avenrun[2], EXP_15, active_tasks);
}
