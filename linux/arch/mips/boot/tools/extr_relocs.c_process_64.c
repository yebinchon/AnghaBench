
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int emit_relocs (int,int,int *) ;
 int print_reloc_info () ;
 int read_ehdr (int *) ;
 int read_relocs (int *) ;
 int read_shdrs (int *) ;
 int read_strtabs (int *) ;
 int read_symtabs (int *) ;
 int regex_init () ;
 int remove_relocs (int *) ;

void process(FILE *fp, int as_text, int as_bin,
      int show_reloc_info, int keep_relocs)
{
 regex_init();
 read_ehdr(fp);
 read_shdrs(fp);
 read_strtabs(fp);
 read_symtabs(fp);
 read_relocs(fp);
 if (show_reloc_info) {
  print_reloc_info();
  return;
 }
 emit_relocs(as_text, as_bin, fp);
 if (!keep_relocs)
  remove_relocs(fp);
}
