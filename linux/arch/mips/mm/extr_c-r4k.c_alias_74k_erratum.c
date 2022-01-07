
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {unsigned int processor_id; } ;


 int BUG () ;
 int MIPS_CONF6_SYND ;


 unsigned int PRID_IMP_MASK ;
 unsigned int PRID_REV_ENCODE_332 (int,int,int ) ;
 unsigned int PRID_REV_MASK ;
 int read_c0_config6 () ;
 int write_c0_config6 (int) ;

__attribute__((used)) static inline int alias_74k_erratum(struct cpuinfo_mips *c)
{
 unsigned int imp = c->processor_id & PRID_IMP_MASK;
 unsigned int rev = c->processor_id & PRID_REV_MASK;
 int present = 0;
 switch (imp) {
 case 128:
  if (rev <= PRID_REV_ENCODE_332(2, 4, 0))
   present = 1;
  if (rev == PRID_REV_ENCODE_332(2, 4, 0))
   write_c0_config6(read_c0_config6() | MIPS_CONF6_SYND);
  break;
 case 129:
  if (rev <= PRID_REV_ENCODE_332(1, 1, 0)) {
   present = 1;
   write_c0_config6(read_c0_config6() | MIPS_CONF6_SYND);
  }
  break;
 default:
  BUG();
 }

 return present;
}
