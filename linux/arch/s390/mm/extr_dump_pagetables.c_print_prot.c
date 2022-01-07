
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 unsigned int _PAGE_INVALID ;
 unsigned int _PAGE_NOEXEC ;
 unsigned int _PAGE_PROTECT ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void print_prot(struct seq_file *m, unsigned int pr, int level)
{
 static const char * const level_name[] =
  { "ASCE", "PGD", "PUD", "PMD", "PTE" };

 seq_printf(m, "%s ", level_name[level]);
 if (pr & _PAGE_INVALID) {
  seq_printf(m, "I\n");
  return;
 }
 seq_puts(m, (pr & _PAGE_PROTECT) ? "RO " : "RW ");
 seq_puts(m, (pr & _PAGE_NOEXEC) ? "NX\n" : "X\n");
}
