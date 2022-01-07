
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int no_divider; int unfold; int only_trailers; } ;
struct TYPE_7__ {int option; TYPE_2__ trailer_opts; } ;
struct TYPE_8__ {TYPE_3__ contents; } ;
struct used_atom {TYPE_4__ u; } ;
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;
struct TYPE_5__ {char* string; } ;


 int C_TRAILERS ;
 struct string_list STRING_LIST_INIT_DUP ;
 int _ (char*) ;
 int strbuf_addf (struct strbuf*,int ,char const*) ;
 int strcmp (char const*,char*) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_split (struct string_list*,char const*,char,int) ;

__attribute__((used)) static int trailers_atom_parser(const struct ref_format *format, struct used_atom *atom,
    const char *arg, struct strbuf *err)
{
 struct string_list params = STRING_LIST_INIT_DUP;
 int i;

 atom->u.contents.trailer_opts.no_divider = 1;

 if (arg) {
  string_list_split(&params, arg, ',', -1);
  for (i = 0; i < params.nr; i++) {
   const char *s = params.items[i].string;
   if (!strcmp(s, "unfold"))
    atom->u.contents.trailer_opts.unfold = 1;
   else if (!strcmp(s, "only"))
    atom->u.contents.trailer_opts.only_trailers = 1;
   else {
    strbuf_addf(err, _("unknown %%(trailers) argument: %s"), s);
    string_list_clear(&params, 0);
    return -1;
   }
  }
 }
 atom->u.contents.option = C_TRAILERS;
 string_list_clear(&params, 0);
 return 0;
}
