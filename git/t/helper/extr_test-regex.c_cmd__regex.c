
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_flag {char* name; int flag; } ;
typedef int regmatch_t ;
typedef int regex_t ;


 int die (char*,char const*) ;
 int git_setup_gettext () ;
 struct reg_flag* reg_flags ;
 scalar_t__ regcomp (int *,char const*,int) ;
 scalar_t__ regexec (int *,char const*,int,int *,int ) ;
 int strcmp (char const*,char*) ;
 int test_regex_bug () ;
 int usage (char*) ;

int cmd__regex(int argc, const char **argv)
{
 const char *pat;
 const char *str;
 int flags = 0;
 regex_t r;
 regmatch_t m[1];

 if (argc == 2 && !strcmp(argv[1], "--bug"))
  return test_regex_bug();
 else if (argc < 3)
  usage("test-tool regex --bug\n"
        "test-tool regex <pattern> <string> [<options>]");

 argv++;
 pat = *argv++;
 str = *argv++;
 while (*argv) {
  struct reg_flag *rf;
  for (rf = reg_flags; rf->name; rf++)
   if (!strcmp(*argv, rf->name)) {
    flags |= rf->flag;
    break;
   }
  if (!rf->name)
   die("do not recognize %s", *argv);
  argv++;
 }
 git_setup_gettext();

 if (regcomp(&r, pat, flags))
  die("failed regcomp() for pattern '%s'", pat);
 if (regexec(&r, str, 1, m, 0))
  return 1;

 return 0;
}
