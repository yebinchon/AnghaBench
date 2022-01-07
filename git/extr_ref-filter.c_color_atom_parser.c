
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int color; } ;
struct used_atom {TYPE_1__ u; } ;
struct strbuf {int dummy; } ;
struct ref_format {int use_color; } ;


 int _ (char*) ;
 scalar_t__ color_parse (char const*,int ) ;
 int strbuf_addf_ret (struct strbuf*,int,int ,...) ;
 int want_color (int ) ;

__attribute__((used)) static int color_atom_parser(const struct ref_format *format, struct used_atom *atom,
        const char *color_value, struct strbuf *err)
{
 if (!color_value)
  return strbuf_addf_ret(err, -1, _("expected format: %%(color:<color>)"));
 if (color_parse(color_value, atom->u.color) < 0)
  return strbuf_addf_ret(err, -1, _("unrecognized color: %%(color:%s)"),
           color_value);




 if (!want_color(format->use_color))
  color_parse("", atom->u.color);
 return 0;
}
