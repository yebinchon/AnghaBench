
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refname; } ;
struct used_atom {int name; TYPE_1__ u; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;


 int refname_atom_parser_internal (int *,char const*,int ,struct strbuf*) ;

__attribute__((used)) static int refname_atom_parser(const struct ref_format *format, struct used_atom *atom,
          const char *arg, struct strbuf *err)
{
 return refname_atom_parser_internal(&atom->u.refname, arg, atom->name, err);
}
