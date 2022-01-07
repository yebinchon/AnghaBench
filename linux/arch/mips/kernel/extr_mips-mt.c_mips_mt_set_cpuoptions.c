
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INDEX_0 ;
 int INDEX_8 ;
 int Index_Load_Tag_D ;
 int Index_Store_Tag_D ;
 int cache_op (int ,int ) ;
 int ehb () ;
 int itc_base ;
 unsigned int mt_opt_config7 ;
 scalar_t__ mt_opt_forceconfig7 ;
 scalar_t__ mt_opt_nblsu ;
 scalar_t__ mt_opt_rpsctl ;
 int printk (char*,unsigned long,...) ;
 unsigned int read_c0_config7 () ;
 unsigned long read_c0_dtaglo () ;
 unsigned long read_c0_ecc () ;
 int write_c0_config7 (unsigned int) ;
 int write_c0_dtaglo (int) ;
 int write_c0_ecc (unsigned long) ;

void mips_mt_set_cpuoptions(void)
{
 unsigned int oconfig7 = read_c0_config7();
 unsigned int nconfig7 = oconfig7;

 if (mt_opt_rpsctl >= 0) {
  printk("34K return prediction stack override set to %d.\n",
   mt_opt_rpsctl);
  if (mt_opt_rpsctl)
   nconfig7 |= (1 << 2);
  else
   nconfig7 &= ~(1 << 2);
 }
 if (mt_opt_nblsu >= 0) {
  printk("34K ALU/LSU sync override set to %d.\n", mt_opt_nblsu);
  if (mt_opt_nblsu)
   nconfig7 |= (1 << 5);
  else
   nconfig7 &= ~(1 << 5);
 }
 if (mt_opt_forceconfig7) {
  printk("CP0.Config7 forced to 0x%08x.\n", mt_opt_config7);
  nconfig7 = mt_opt_config7;
 }
 if (oconfig7 != nconfig7) {
  __asm__ __volatile("sync");
  write_c0_config7(nconfig7);
  ehb();
  printk("Config7: 0x%08x\n", read_c0_config7());
 }

 if (itc_base != 0) {







  unsigned long ectlval;
  unsigned long itcblkgrn;


  ectlval = read_c0_ecc();
  write_c0_ecc(ectlval | (0x1 << 26));
  ehb();



  cache_op(Index_Load_Tag_D, (0x80000008));
  ehb();
  itcblkgrn = read_c0_dtaglo();
  itcblkgrn &= 0xfffe0000;

  itcblkgrn |= 0x00000c00;

  write_c0_dtaglo(itcblkgrn);
  ehb();

  cache_op(Index_Store_Tag_D, (0x80000008));

  write_c0_dtaglo((itc_base & 0xfffffc00) | 0x1 );
  ehb();

  cache_op(Index_Store_Tag_D, (0x80000000));
  write_c0_ecc(ectlval);
  ehb();
  printk("Mapped %ld ITC cells starting at 0x%08x\n",
   ((itcblkgrn & 0x7fe00000) >> 20), itc_base);
 }
}
