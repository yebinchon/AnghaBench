
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct pretty_print_context {scalar_t__ expand_tabs_in_log; } ;


 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_add_tabexpand (struct strbuf*,scalar_t__,char const*,int) ;
 int strbuf_addchars (struct strbuf*,char,int) ;

__attribute__((used)) static void pp_handle_indent(struct pretty_print_context *pp,
        struct strbuf *sb, int indent,
        const char *line, int linelen)
{
 strbuf_addchars(sb, ' ', indent);
 if (pp->expand_tabs_in_log)
  strbuf_add_tabexpand(sb, pp->expand_tabs_in_log, line, linelen);
 else
  strbuf_add(sb, line, linelen);
}
