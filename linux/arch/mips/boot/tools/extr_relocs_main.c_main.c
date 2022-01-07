
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t EI_CLASS ;
 int EI_NIDENT ;
 unsigned char ELFCLASS64 ;
 int die (char*,char const*,int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (unsigned char**,int,int,int *) ;
 int process_32 (int *,int,int,int,int) ;
 int process_64 (int *,int,int,int,int) ;
 int rewind (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int ) ;
 int usage () ;

int main(int argc, char **argv)
{
 int show_reloc_info, as_text, as_bin, keep_relocs;
 const char *fname;
 FILE *fp;
 int i;
 unsigned char e_ident[EI_NIDENT];

 show_reloc_info = 0;
 as_text = 0;
 as_bin = 0;
 keep_relocs = 0;
 fname = ((void*)0);
 for (i = 1; i < argc; i++) {
  char *arg = argv[i];

  if (*arg == '-') {
   if (strcmp(arg, "--reloc-info") == 0) {
    show_reloc_info = 1;
    continue;
   }
   if (strcmp(arg, "--text") == 0) {
    as_text = 1;
    continue;
   }
   if (strcmp(arg, "--bin") == 0) {
    as_bin = 1;
    continue;
   }
   if (strcmp(arg, "--keep") == 0) {
    keep_relocs = 1;
    continue;
   }
  } else if (!fname) {
   fname = arg;
   continue;
  }
  usage();
 }
 if (!fname)
  usage();

 fp = fopen(fname, "r+");
 if (!fp)
  die("Cannot open %s: %s\n", fname, strerror(errno));

 if (fread(&e_ident, 1, EI_NIDENT, fp) != EI_NIDENT)
  die("Cannot read %s: %s", fname, strerror(errno));

 rewind(fp);
 if (e_ident[EI_CLASS] == ELFCLASS64)
  process_64(fp, as_text, as_bin, show_reloc_info, keep_relocs);
 else
  process_32(fp, as_text, as_bin, show_reloc_info, keep_relocs);
 fclose(fp);
 return 0;
}
