
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int ARM64_NCAPS ;
 int cpu_hwcaps ;
 int pr_emerg (char*,int ,int *) ;

__attribute__((used)) static int dump_cpu_hwcaps(struct notifier_block *self, unsigned long v, void *p)
{

 pr_emerg("0x%*pb\n", ARM64_NCAPS, &cpu_hwcaps);
 return 0;
}
