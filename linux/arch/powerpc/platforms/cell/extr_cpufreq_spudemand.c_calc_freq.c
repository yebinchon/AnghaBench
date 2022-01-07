
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spu_gov_info_struct {int busy_spus; TYPE_1__* policy; } ;
struct TYPE_4__ {int busy_spus; } ;
struct TYPE_3__ {int cpu; int max; } ;


 int EXP ;
 int FIXED_1 ;
 int atomic_read (int *) ;
 int calc_load (int,int ,int) ;
 TYPE_2__* cbe_spu_info ;
 size_t cpu_to_node (int) ;
 int pr_debug (char*,int,int,int) ;

__attribute__((used)) static int calc_freq(struct spu_gov_info_struct *info)
{
 int cpu;
 int busy_spus;

 cpu = info->policy->cpu;
 busy_spus = atomic_read(&cbe_spu_info[cpu_to_node(cpu)].busy_spus);

 info->busy_spus = calc_load(info->busy_spus, EXP, busy_spus * FIXED_1);
 pr_debug("cpu %d: busy_spus=%d, info->busy_spus=%ld\n",
   cpu, busy_spus, info->busy_spus);

 return info->policy->max * info->busy_spus / FIXED_1;
}
