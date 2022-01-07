
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msr {int h; int l; } ;
struct msr_info {int msr_no; struct msr reg; scalar_t__ msrs; } ;


 struct msr* per_cpu_ptr (scalar_t__,int) ;
 int raw_smp_processor_id () ;
 int wrmsr (int ,int ,int ) ;

__attribute__((used)) static void __wrmsr_on_cpu(void *info)
{
 struct msr_info *rv = info;
 struct msr *reg;
 int this_cpu = raw_smp_processor_id();

 if (rv->msrs)
  reg = per_cpu_ptr(rv->msrs, this_cpu);
 else
  reg = &rv->reg;

 wrmsr(rv->msr_no, reg->l, reg->h);
}
