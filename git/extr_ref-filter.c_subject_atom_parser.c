
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int option; } ;
struct TYPE_4__ {TYPE_1__ contents; } ;
struct used_atom {TYPE_2__ u; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;


 int C_SUB ;
 int _ (char*) ;
 int strbuf_addf_ret (struct strbuf*,int,int ) ;

__attribute__((used)) static int subject_atom_parser(const struct ref_format *format, struct used_atom *atom,
          const char *arg, struct strbuf *err)
{
 if (arg)
  return strbuf_addf_ret(err, -1, _("%%(subject) does not take arguments"));
 atom->u.contents.option = C_SUB;
 return 0;
}
