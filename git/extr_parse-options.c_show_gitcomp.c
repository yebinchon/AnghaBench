
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int type; char* long_name; int flags; } ;



 int OPTION_END ;





 int PARSE_OPT_COMPLETE ;
 int PARSE_OPT_COMP_ARG ;
 int PARSE_OPT_HIDDEN ;
 int PARSE_OPT_LASTARG_DEFAULT ;
 int PARSE_OPT_NOARG ;
 int PARSE_OPT_NOCOMPLETE ;
 int PARSE_OPT_OPTARG ;
 int fputc (char,int ) ;
 int printf (char*,char*,char const*) ;
 int show_negated_gitcomp (struct option const*,int) ;
 scalar_t__ starts_with (char*,char*) ;
 int stdout ;

__attribute__((used)) static int show_gitcomp(const struct option *opts)
{
 const struct option *original_opts = opts;
 int nr_noopts = 0;

 for (; opts->type != OPTION_END; opts++) {
  const char *suffix = "";

  if (!opts->long_name)
   continue;
  if (opts->flags & (PARSE_OPT_HIDDEN | PARSE_OPT_NOCOMPLETE))
   continue;

  switch (opts->type) {
  case 131:
   continue;
  case 128:
  case 132:
  case 130:
  case 129:
  case 133:
   if (opts->flags & PARSE_OPT_NOARG)
    break;
   if (opts->flags & PARSE_OPT_OPTARG)
    break;
   if (opts->flags & PARSE_OPT_LASTARG_DEFAULT)
    break;
   suffix = "=";
   break;
  default:
   break;
  }
  if (opts->flags & PARSE_OPT_COMP_ARG)
   suffix = "=";
  if (starts_with(opts->long_name, "no-"))
   nr_noopts++;
  printf(" --%s%s", opts->long_name, suffix);
 }
 show_negated_gitcomp(original_opts, -1);
 show_negated_gitcomp(original_opts, nr_noopts);
 fputc('\n', stdout);
 return PARSE_OPT_COMPLETE;
}
