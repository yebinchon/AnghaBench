
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int processor_id; } ;



 int MIPS_CONF7_RPS ;
 int PRID_REV_34K_V1_0_2 ;
 int PRID_REV_MASK ;
 struct cpuinfo_mips current_cpu_data ;
 int current_cpu_type () ;
 int read_c0_config7 () ;
 int write_c0_config7 (int) ;

__attribute__((used)) static inline void check_errata(void)
{
 struct cpuinfo_mips *c = &current_cpu_data;

 switch (current_cpu_type()) {
 case 128:





  if ((c->processor_id & PRID_REV_MASK) <= PRID_REV_34K_V1_0_2)
   write_c0_config7(read_c0_config7() | MIPS_CONF7_RPS);
  break;
 default:
  break;
 }
}
