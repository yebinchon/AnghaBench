
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ cpumask_t ;


 int CPU_BITS_NONE ;
 int a15_erratum_get_cpumask (int,struct mm_struct*,TYPE_1__*) ;
 int erratum_a15_798181 () ;
 int get_cpu () ;
 int ipi_flush_tlb_a15_erratum ;
 int put_cpu () ;
 int smp_call_function_many (TYPE_1__*,int ,int *,int) ;

__attribute__((used)) static void broadcast_tlb_mm_a15_erratum(struct mm_struct *mm)
{
 int this_cpu;
 cpumask_t mask = { CPU_BITS_NONE };

 if (!erratum_a15_798181())
  return;

 this_cpu = get_cpu();
 a15_erratum_get_cpumask(this_cpu, mm, &mask);
 smp_call_function_many(&mask, ipi_flush_tlb_a15_erratum, ((void*)0), 1);
 put_cpu();
}
