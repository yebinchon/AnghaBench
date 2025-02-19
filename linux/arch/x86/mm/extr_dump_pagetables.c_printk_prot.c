
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int pgprotval_t ;
typedef int pgprot_t ;


 int _PAGE_GLOBAL ;
 int _PAGE_NX ;
 int _PAGE_PAT ;
 int _PAGE_PAT_LARGE ;
 int _PAGE_PCD ;
 int _PAGE_PRESENT ;
 int _PAGE_PSE ;
 int _PAGE_PWT ;
 int _PAGE_RW ;
 int _PAGE_USER ;
 int pgprot_val (int ) ;
 int pt_dump_cont_printf (struct seq_file*,int,char*,...) ;

__attribute__((used)) static void printk_prot(struct seq_file *m, pgprot_t prot, int level, bool dmsg)
{
 pgprotval_t pr = pgprot_val(prot);
 static const char * const level_name[] =
  { "cr3", "pgd", "p4d", "pud", "pmd", "pte" };

 if (!(pr & _PAGE_PRESENT)) {

  pt_dump_cont_printf(m, dmsg, "                              ");
 } else {
  if (pr & _PAGE_USER)
   pt_dump_cont_printf(m, dmsg, "USR ");
  else
   pt_dump_cont_printf(m, dmsg, "    ");
  if (pr & _PAGE_RW)
   pt_dump_cont_printf(m, dmsg, "RW ");
  else
   pt_dump_cont_printf(m, dmsg, "ro ");
  if (pr & _PAGE_PWT)
   pt_dump_cont_printf(m, dmsg, "PWT ");
  else
   pt_dump_cont_printf(m, dmsg, "    ");
  if (pr & _PAGE_PCD)
   pt_dump_cont_printf(m, dmsg, "PCD ");
  else
   pt_dump_cont_printf(m, dmsg, "    ");


  if (level <= 4 && pr & _PAGE_PSE)
   pt_dump_cont_printf(m, dmsg, "PSE ");
  else
   pt_dump_cont_printf(m, dmsg, "    ");
  if ((level == 5 && pr & _PAGE_PAT) ||
      ((level == 4 || level == 3) && pr & _PAGE_PAT_LARGE))
   pt_dump_cont_printf(m, dmsg, "PAT ");
  else
   pt_dump_cont_printf(m, dmsg, "    ");
  if (pr & _PAGE_GLOBAL)
   pt_dump_cont_printf(m, dmsg, "GLB ");
  else
   pt_dump_cont_printf(m, dmsg, "    ");
  if (pr & _PAGE_NX)
   pt_dump_cont_printf(m, dmsg, "NX ");
  else
   pt_dump_cont_printf(m, dmsg, "x  ");
 }
 pt_dump_cont_printf(m, dmsg, "%s\n", level_name[level]);
}
