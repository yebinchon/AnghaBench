
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct ref_format {int need_color_reset_at_eol; char* format; int use_color; } ;
struct TYPE_2__ {int name; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (char*,int ) ;
 int error (int ,char const*) ;
 char* find_next (char const*) ;
 int parse_ref_filter_atom (struct ref_format*,char const*,char const*,struct strbuf*) ;
 scalar_t__ skip_prefix (int ,char*,char const**) ;
 int strbuf_release (struct strbuf*) ;
 char* strchr (char const*,char) ;
 int strcmp (char const*,char*) ;
 TYPE_1__* used_atom ;
 int want_color (int ) ;

int verify_ref_format(struct ref_format *format)
{
 const char *cp, *sp;

 format->need_color_reset_at_eol = 0;
 for (cp = format->format; *cp && (sp = find_next(cp)); ) {
  struct strbuf err = STRBUF_INIT;
  const char *color, *ep = strchr(sp, ')');
  int at;

  if (!ep)
   return error(_("malformed format string %s"), sp);

  at = parse_ref_filter_atom(format, sp + 2, ep, &err);
  if (at < 0)
   die("%s", err.buf);
  cp = ep + 1;

  if (skip_prefix(used_atom[at].name, "color:", &color))
   format->need_color_reset_at_eol = !!strcmp(color, "reset");
  strbuf_release(&err);
 }
 if (format->need_color_reset_at_eol && !want_color(format->use_color))
  format->need_color_reset_at_eol = 0;
 return 0;
}
