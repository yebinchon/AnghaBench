
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int value; } ;
struct object_id {int dummy; } ;


 int _ (char*) ;
 int error (int ,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int oid_array_append (int ,struct object_id*) ;
 int oid_array_clear (int ) ;

int parse_opt_object_name(const struct option *opt, const char *arg, int unset)
{
 struct object_id oid;

 if (unset) {
  oid_array_clear(opt->value);
  return 0;
 }
 if (!arg)
  return -1;
 if (get_oid(arg, &oid))
  return error(_("malformed object name '%s'"), arg);
 oid_array_append(opt->value, &oid);
 return 0;
}
