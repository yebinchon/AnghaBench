
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOONGSON_DIAG_DTLB ;
 int LOONGSON_DIAG_ITLB ;
 int current_cpu_type () ;
 int write_c0_diag (int) ;

__attribute__((used)) static inline void flush_micro_tlb(void)
{
 switch (current_cpu_type()) {
 case 129:
  write_c0_diag(LOONGSON_DIAG_ITLB);
  break;
 case 128:
  write_c0_diag(LOONGSON_DIAG_ITLB | LOONGSON_DIAG_DTLB);
  break;
 default:
  break;
 }
}
