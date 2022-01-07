
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct format_commit_context {TYPE_1__* pretty_ctx; } ;
struct TYPE_2__ {int color; } ;


 int COLOR_MAXLEN ;
 char* GIT_COLOR_BLUE ;
 char* GIT_COLOR_GREEN ;
 char* GIT_COLOR_RED ;
 char* GIT_COLOR_RESET ;
 int _ (char*) ;
 scalar_t__ color_parse_mem (char const*,int,char*) ;
 int die (int ) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strchr (char const*,char) ;
 scalar_t__ want_color (int ) ;

__attribute__((used)) static size_t parse_color(struct strbuf *sb,
     const char *placeholder,
     struct format_commit_context *c)
{
 const char *rest = placeholder;
 const char *basic_color = ((void*)0);

 if (placeholder[1] == '(') {
  const char *begin = placeholder + 2;
  const char *end = strchr(begin, ')');
  char color[COLOR_MAXLEN];

  if (!end)
   return 0;

  if (skip_prefix(begin, "auto,", &begin)) {
   if (!want_color(c->pretty_ctx->color))
    return end - placeholder + 1;
  } else if (skip_prefix(begin, "always,", &begin)) {

  } else {

   if (!want_color(c->pretty_ctx->color))
    return end - placeholder + 1;
  }

  if (color_parse_mem(begin, end - begin, color) < 0)
   die(_("unable to parse --pretty format"));
  strbuf_addstr(sb, color);
  return end - placeholder + 1;
 }






 if (skip_prefix(placeholder + 1, "red", &rest))
  basic_color = GIT_COLOR_RED;
 else if (skip_prefix(placeholder + 1, "green", &rest))
  basic_color = GIT_COLOR_GREEN;
 else if (skip_prefix(placeholder + 1, "blue", &rest))
  basic_color = GIT_COLOR_BLUE;
 else if (skip_prefix(placeholder + 1, "reset", &rest))
  basic_color = GIT_COLOR_RESET;

 if (basic_color && want_color(c->pretty_ctx->color))
  strbuf_addstr(sb, basic_color);

 return rest - placeholder;
}
