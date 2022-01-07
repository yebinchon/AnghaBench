
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct refname_atom {int rstrip; int option; int lstrip; } ;


 int R_LSTRIP ;
 int R_NORMAL ;
 int R_RSTRIP ;
 int R_SHORT ;
 int _ (char*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_addf_ret (struct strbuf*,int,int ,char const*,...) ;
 int strcmp (char const*,char*) ;
 scalar_t__ strtol_i (char const*,int,int *) ;

__attribute__((used)) static int refname_atom_parser_internal(struct refname_atom *atom, const char *arg,
      const char *name, struct strbuf *err)
{
 if (!arg)
  atom->option = R_NORMAL;
 else if (!strcmp(arg, "short"))
  atom->option = R_SHORT;
 else if (skip_prefix(arg, "lstrip=", &arg) ||
   skip_prefix(arg, "strip=", &arg)) {
  atom->option = R_LSTRIP;
  if (strtol_i(arg, 10, &atom->lstrip))
   return strbuf_addf_ret(err, -1, _("Integer value expected refname:lstrip=%s"), arg);
 } else if (skip_prefix(arg, "rstrip=", &arg)) {
  atom->option = R_RSTRIP;
  if (strtol_i(arg, 10, &atom->rstrip))
   return strbuf_addf_ret(err, -1, _("Integer value expected refname:rstrip=%s"), arg);
 } else
  return strbuf_addf_ret(err, -1, _("unrecognized %%(%s) argument: %s"), name, arg);
 return 0;
}
