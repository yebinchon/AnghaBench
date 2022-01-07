
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {scalar_t__ value; int long_name; } ;
struct TYPE_2__ {int hexsz; } ;


 int DEFAULT_ABBREV ;
 int MINIMUM_ABBREV ;
 int _ (char*) ;
 int error (int ,int ) ;
 int strtol (char const*,char**,int) ;
 TYPE_1__* the_hash_algo ;

int parse_opt_abbrev_cb(const struct option *opt, const char *arg, int unset)
{
 int v;

 if (!arg) {
  v = unset ? 0 : DEFAULT_ABBREV;
 } else {
  if (!*arg)
   return error(_("option `%s' expects a numerical value"),
         opt->long_name);
  v = strtol(arg, (char **)&arg, 10);
  if (*arg)
   return error(_("option `%s' expects a numerical value"),
         opt->long_name);
  if (v && v < MINIMUM_ABBREV)
   v = MINIMUM_ABBREV;
  else if (v > the_hash_algo->hexsz)
   v = the_hash_algo->hexsz;
 }
 *(int *)(opt->value) = v;
 return 0;
}
