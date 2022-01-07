
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct name_decoration {scalar_t__ type; struct name_decoration* next; } ;
struct commit {int object; } ;


 scalar_t__ DECORATION_NONE ;
 scalar_t__ DECORATION_REF_HEAD ;
 scalar_t__ DECORATION_REF_TAG ;
 int DIFF_COMMIT ;
 struct name_decoration* current_pointed_by_HEAD (struct name_decoration const*) ;
 char const* decorate_get_color (int,scalar_t__) ;
 char* diff_get_color (int,int ) ;
 struct name_decoration* get_name_decoration (int *) ;
 int show_name (struct strbuf*,struct name_decoration const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

void format_decorations_extended(struct strbuf *sb,
   const struct commit *commit,
   int use_color,
   const char *prefix,
   const char *separator,
   const char *suffix)
{
 const struct name_decoration *decoration;
 const struct name_decoration *current_and_HEAD;
 const char *color_commit =
  diff_get_color(use_color, DIFF_COMMIT);
 const char *color_reset =
  decorate_get_color(use_color, DECORATION_NONE);

 decoration = get_name_decoration(&commit->object);
 if (!decoration)
  return;

 current_and_HEAD = current_pointed_by_HEAD(decoration);
 while (decoration) {





  if (decoration != current_and_HEAD) {
   strbuf_addstr(sb, color_commit);
   strbuf_addstr(sb, prefix);
   strbuf_addstr(sb, color_reset);
   strbuf_addstr(sb, decorate_get_color(use_color, decoration->type));
   if (decoration->type == DECORATION_REF_TAG)
    strbuf_addstr(sb, "tag: ");

   show_name(sb, decoration);

   if (current_and_HEAD &&
       decoration->type == DECORATION_REF_HEAD) {
    strbuf_addstr(sb, " -> ");
    strbuf_addstr(sb, color_reset);
    strbuf_addstr(sb, decorate_get_color(use_color, current_and_HEAD->type));
    show_name(sb, current_and_HEAD);
   }
   strbuf_addstr(sb, color_reset);

   prefix = separator;
  }
  decoration = decoration->next;
 }
 strbuf_addstr(sb, color_commit);
 strbuf_addstr(sb, suffix);
 strbuf_addstr(sb, color_reset);
}
