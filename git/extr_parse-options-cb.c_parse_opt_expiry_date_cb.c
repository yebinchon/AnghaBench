
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct option {scalar_t__ value; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 scalar_t__ parse_expiry_date (char const*,int *) ;

int parse_opt_expiry_date_cb(const struct option *opt, const char *arg,
        int unset)
{
 if (unset)
  arg = "never";
 if (parse_expiry_date(arg, (timestamp_t *)opt->value))
  die(_("malformed expiration date '%s'"), arg);
 return 0;
}
