
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int type; int flags; int short_name; scalar_t__ argh; int callback; int ll_callback; scalar_t__ long_name; } ;
typedef int short_opts ;


 int BUG (char*) ;




 int OPTION_END ;




 int PARSE_OPT_LASTARG_DEFAULT ;
 int PARSE_OPT_NOARG ;
 int PARSE_OPT_NODASH ;
 int PARSE_OPT_NONEG ;
 int PARSE_OPT_OPTARG ;
 int exit (int) ;
 int memset (char*,char,int) ;
 int optbug (struct option const*,char*) ;
 scalar_t__ strcspn (scalar_t__,char*) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static void parse_options_check(const struct option *opts)
{
 int err = 0;
 char short_opts[128];

 memset(short_opts, '\0', sizeof(short_opts));
 for (; opts->type != OPTION_END; opts++) {
  if ((opts->flags & PARSE_OPT_LASTARG_DEFAULT) &&
      (opts->flags & PARSE_OPT_OPTARG))
   err |= optbug(opts, "uses incompatible flags "
     "LASTARG_DEFAULT and OPTARG");
  if (opts->short_name) {
   if (0x7F <= opts->short_name)
    err |= optbug(opts, "invalid short name");
   else if (short_opts[opts->short_name]++)
    err |= optbug(opts, "short name already used");
  }
  if (opts->flags & PARSE_OPT_NODASH &&
      ((opts->flags & PARSE_OPT_OPTARG) ||
       !(opts->flags & PARSE_OPT_NOARG) ||
       !(opts->flags & PARSE_OPT_NONEG) ||
       opts->long_name))
   err |= optbug(opts, "uses feature "
     "not supported for dashless options");
  switch (opts->type) {
  case 132:
  case 134:
  case 130:
  case 128:
  case 129:
   if ((opts->flags & PARSE_OPT_OPTARG) ||
       !(opts->flags & PARSE_OPT_NOARG))
    err |= optbug(opts, "should not accept an argument");
   break;
  case 133:
   if (!opts->callback && !opts->ll_callback)
    BUG("OPTION_CALLBACK needs one callback");
   if (opts->callback && opts->ll_callback)
    BUG("OPTION_CALLBACK can't have two callbacks");
   break;
  case 131:
   if (!opts->ll_callback)
    BUG("OPTION_LOWLEVEL_CALLBACK needs a callback");
   if (opts->callback)
    BUG("OPTION_LOWLEVEL_CALLBACK needs no high level callback");
   break;
  case 135:
   BUG("OPT_ALIAS() should not remain at this point. "
       "Are you using parse_options_step() directly?\n"
       "That case is not supported yet.");
  default:
   ;
  }
  if (opts->argh &&
      strcspn(opts->argh, " _") != strlen(opts->argh))
   err |= optbug(opts, "multi-word argh should use dash to separate words");
 }
 if (err)
  exit(128);
}
