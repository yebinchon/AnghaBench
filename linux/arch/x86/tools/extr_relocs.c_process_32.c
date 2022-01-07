
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ELF_BITS ;
 int emit_relocs (int,int) ;
 int percpu_init () ;
 int print_absolute_relocs () ;
 int print_absolute_symbols () ;
 int print_reloc_info () ;
 int read_ehdr (int *) ;
 int read_relocs (int *) ;
 int read_shdrs (int *) ;
 int read_strtabs (int *) ;
 int read_symtabs (int *) ;
 int regex_init (int) ;

void process(FILE *fp, int use_real_mode, int as_text,
      int show_absolute_syms, int show_absolute_relocs,
      int show_reloc_info)
{
 regex_init(use_real_mode);
 read_ehdr(fp);
 read_shdrs(fp);
 read_strtabs(fp);
 read_symtabs(fp);
 read_relocs(fp);
 if (ELF_BITS == 64)
  percpu_init();
 if (show_absolute_syms) {
  print_absolute_symbols();
  return;
 }
 if (show_absolute_relocs) {
  print_absolute_relocs();
  return;
 }
 if (show_reloc_info) {
  print_reloc_info();
  return;
 }
 emit_relocs(as_text, use_real_mode);
}
