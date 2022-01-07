
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int option; } ;
struct TYPE_4__ {TYPE_1__ objectname; } ;
struct used_atom {TYPE_2__ u; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;


 scalar_t__ MINIMUM_ABBREV ;
 int O_FULL ;
 int O_LENGTH ;
 int O_SHORT ;
 int _ (char*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_addf_ret (struct strbuf*,int,int ,char const*) ;
 int strcmp (char const*,char*) ;
 scalar_t__ strtoul_ui (char const*,int,scalar_t__*) ;

__attribute__((used)) static int objectname_atom_parser(const struct ref_format *format, struct used_atom *atom,
      const char *arg, struct strbuf *err)
{
 if (!arg)
  atom->u.objectname.option = O_FULL;
 else if (!strcmp(arg, "short"))
  atom->u.objectname.option = O_SHORT;
 else if (skip_prefix(arg, "short=", &arg)) {
  atom->u.objectname.option = O_LENGTH;
  if (strtoul_ui(arg, 10, &atom->u.objectname.length) ||
      atom->u.objectname.length == 0)
   return strbuf_addf_ret(err, -1, _("positive value expected objectname:short=%s"), arg);
  if (atom->u.objectname.length < MINIMUM_ABBREV)
   atom->u.objectname.length = MINIMUM_ABBREV;
 } else
  return strbuf_addf_ret(err, -1, _("unrecognized %%(objectname) argument: %s"), arg);
 return 0;
}
