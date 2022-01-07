
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {int long_name; struct diff_options* value; } ;
struct TYPE_2__ {int find_copies_harder; } ;
struct diff_options {scalar_t__ detect_rename; TYPE_1__ flags; int rename_score; } ;


 int BUG_ON_OPT_NEG (int) ;
 scalar_t__ DIFF_DETECT_COPY ;
 int _ (char*) ;
 int error (int ,int ) ;
 int parse_rename_score (char const**) ;

__attribute__((used)) static int diff_opt_find_copies(const struct option *opt,
    const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 if (!arg)
  arg = "";
 options->rename_score = parse_rename_score(&arg);
 if (*arg != 0)
  return error(_("invalid argument to %s"), opt->long_name);

 if (options->detect_rename == DIFF_DETECT_COPY)
  options->flags.find_copies_harder = 1;
 else
  options->detect_rename = DIFF_DETECT_COPY;

 return 0;
}
