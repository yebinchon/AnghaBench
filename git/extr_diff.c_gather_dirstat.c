
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirstat_file {char* name; unsigned long changed; } ;
struct dirstat_dir {int permille; int cumulative; scalar_t__ nr; struct dirstat_file* files; } ;
struct diff_options {int file; } ;


 char* diff_line_prefix (struct diff_options*) ;
 int fprintf (int ,char*,char const*,int,int,int,char const*) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static long gather_dirstat(struct diff_options *opt, struct dirstat_dir *dir,
  unsigned long changed, const char *base, int baselen)
{
 unsigned long sum_changes = 0;
 unsigned int sources = 0;
 const char *line_prefix = diff_line_prefix(opt);

 while (dir->nr) {
  struct dirstat_file *f = dir->files;
  int namelen = strlen(f->name);
  unsigned long changes;
  char *slash;

  if (namelen < baselen)
   break;
  if (memcmp(f->name, base, baselen))
   break;
  slash = strchr(f->name + baselen, '/');
  if (slash) {
   int newbaselen = slash + 1 - f->name;
   changes = gather_dirstat(opt, dir, changed, f->name, newbaselen);
   sources++;
  } else {
   changes = f->changed;
   dir->files++;
   dir->nr--;
   sources += 2;
  }
  sum_changes += changes;
 }







 if (baselen && sources != 1) {
  if (sum_changes) {
   int permille = sum_changes * 1000 / changed;
   if (permille >= dir->permille) {
    fprintf(opt->file, "%s%4d.%01d%% %.*s\n", line_prefix,
     permille / 10, permille % 10, baselen, base);
    if (!dir->cumulative)
     return 0;
   }
  }
 }
 return sum_changes;
}
