
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int type; char const* long_name; int flags; } ;





 int OPTION_END ;






 int PARSE_OPT_HIDDEN ;
 int PARSE_OPT_NOCOMPLETE ;
 int PARSE_OPT_NONEG ;
 int printf (char*,...) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;

__attribute__((used)) static void show_negated_gitcomp(const struct option *opts, int nr_noopts)
{
 int printed_dashdash = 0;

 for (; opts->type != OPTION_END; opts++) {
  int has_unset_form = 0;
  const char *name;

  if (!opts->long_name)
   continue;
  if (opts->flags & (PARSE_OPT_HIDDEN | PARSE_OPT_NOCOMPLETE))
   continue;
  if (opts->flags & PARSE_OPT_NONEG)
   continue;

  switch (opts->type) {
  case 128:
  case 133:
  case 132:
  case 131:
  case 135:
  case 136:
  case 130:
  case 134:
  case 129:
   has_unset_form = 1;
   break;
  default:
   break;
  }
  if (!has_unset_form)
   continue;

  if (skip_prefix(opts->long_name, "no-", &name)) {
   if (nr_noopts < 0)
    printf(" --%s", name);
  } else if (nr_noopts >= 0) {
   if (nr_noopts && !printed_dashdash) {
    printf(" --");
    printed_dashdash = 1;
   }
   printf(" --no-%s", opts->long_name);
   nr_noopts++;
  }
 }
}
