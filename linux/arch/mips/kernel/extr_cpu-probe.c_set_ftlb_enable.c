
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int cputype; } ;
typedef enum ftlb_flags { ____Placeholder_ftlb_flags } ftlb_flags ;
 int FTLB_EN ;
 int FTLB_SET_PROB ;
 int LOONGSON_DIAG_DTLB ;
 int LOONGSON_DIAG_FTLB ;
 int LOONGSON_DIAG_ITLB ;
 int LOONGSON_DIAG_VTLB ;
 unsigned int MIPS_CONF6_FTLBDIS ;
 unsigned int MIPS_CONF6_FTLBEN ;
 int MIPS_CONF6_FTLBP_SHIFT ;
 int back_to_back_c0_hazard () ;
 int calculate_ftlb_probability (struct cpuinfo_mips*) ;
 unsigned int read_c0_config6 () ;
 int write_c0_config6 (unsigned int) ;
 int write_c0_diag (int) ;

__attribute__((used)) static int set_ftlb_enable(struct cpuinfo_mips *c, enum ftlb_flags flags)
{
 unsigned int config;


 switch (c->cputype) {
 case 128:
 case 130:
 case 129:

  config = read_c0_config6();

  if (flags & FTLB_EN)
   config |= MIPS_CONF6_FTLBEN;
  else
   config &= ~MIPS_CONF6_FTLBEN;

  if (flags & FTLB_SET_PROB) {
   config &= ~(3 << MIPS_CONF6_FTLBP_SHIFT);
   config |= calculate_ftlb_probability(c)
      << MIPS_CONF6_FTLBP_SHIFT;
  }

  write_c0_config6(config);
  back_to_back_c0_hazard();
  break;
 case 133:
 case 132:

  if (!(flags & FTLB_EN))
   return 1;
  return 0;
 case 131:

  write_c0_diag(LOONGSON_DIAG_ITLB | LOONGSON_DIAG_DTLB |
         LOONGSON_DIAG_VTLB | LOONGSON_DIAG_FTLB);

  config = read_c0_config6();
  if (flags & FTLB_EN)

   write_c0_config6(config & ~MIPS_CONF6_FTLBDIS);
  else

   write_c0_config6(config | MIPS_CONF6_FTLBDIS);
  break;
 default:
  return 1;
 }

 return 0;
}
