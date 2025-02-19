
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 unsigned long HWCAP_SPARC_CRYPTO ;
 scalar_t__* crypto_hwcaps ;
 scalar_t__* hwcaps ;
 int seq_printf (struct seq_file*,char*,char*,scalar_t__) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 unsigned long sparc64_elf_hwcap ;

void cpucap_info(struct seq_file *m)
{
 unsigned long caps = sparc64_elf_hwcap;
 int i, printed = 0;

 seq_puts(m, "cpucaps\t\t: ");
 for (i = 0; i < ARRAY_SIZE(hwcaps); i++) {
  unsigned long bit = 1UL << i;
  if (hwcaps[i] && (caps & bit)) {
   seq_printf(m, "%s%s",
       printed ? "," : "", hwcaps[i]);
   printed++;
  }
 }
 if (caps & HWCAP_SPARC_CRYPTO) {
  unsigned long cfr;

  __asm__ __volatile__("rd %%asr26, %0" : "=r" (cfr));
  for (i = 0; i < ARRAY_SIZE(crypto_hwcaps); i++) {
   unsigned long bit = 1UL << i;
   if (cfr & bit) {
    seq_printf(m, "%s%s",
        printed ? "," : "", crypto_hwcaps[i]);
    printed++;
   }
  }
 }
 seq_putc(m, '\n');
}
