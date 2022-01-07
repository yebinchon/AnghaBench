
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct name_decoration {int name; } ;


 scalar_t__ DECORATE_SHORT_REFS ;
 scalar_t__ decoration_flags ;
 int prettify_refname (int ) ;
 int strbuf_addstr (struct strbuf*,int ) ;

__attribute__((used)) static void show_name(struct strbuf *sb, const struct name_decoration *decoration)
{
 if (decoration_flags == DECORATE_SHORT_REFS)
  strbuf_addstr(sb, prettify_refname(decoration->name));
 else
  strbuf_addstr(sb, decoration->name);
}
