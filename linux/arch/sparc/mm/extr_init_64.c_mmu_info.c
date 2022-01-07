
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int ARRAY_SIZE (char const**) ;
 int atomic_read (int *) ;
 scalar_t__ cheetah ;
 scalar_t__ cheetah_plus ;
 unsigned long cpu_pgsz_mask ;
 int dcpage_flushes ;
 int dcpage_flushes_xcall ;
 scalar_t__ hypervisor ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 scalar_t__ spitfire ;
 scalar_t__ tlb_type ;

void mmu_info(struct seq_file *m)
{
 static const char *pgsz_strings[] = {
  "8K", "64K", "512K", "4MB", "32MB",
  "256MB", "2GB", "16GB",
 };
 int i, printed;

 if (tlb_type == cheetah)
  seq_printf(m, "MMU Type\t: Cheetah\n");
 else if (tlb_type == cheetah_plus)
  seq_printf(m, "MMU Type\t: Cheetah+\n");
 else if (tlb_type == spitfire)
  seq_printf(m, "MMU Type\t: Spitfire\n");
 else if (tlb_type == hypervisor)
  seq_printf(m, "MMU Type\t: Hypervisor (sun4v)\n");
 else
  seq_printf(m, "MMU Type\t: ???\n");

 seq_printf(m, "MMU PGSZs\t: ");
 printed = 0;
 for (i = 0; i < ARRAY_SIZE(pgsz_strings); i++) {
  if (cpu_pgsz_mask & (1UL << i)) {
   seq_printf(m, "%s%s",
       printed ? "," : "", pgsz_strings[i]);
   printed++;
  }
 }
 seq_putc(m, '\n');
}
