
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct keyword_entry {int color; int keyword; } ;


 int ARRAY_SIZE (struct keyword_entry*) ;
 int GIT_COLOR_RESET ;
 int isalnum (char const) ;
 scalar_t__ isspace (char const) ;
 struct keyword_entry* keywords ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addch (struct strbuf*,char const) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strlen (int ) ;
 int strncasecmp (int ,char const*,int) ;
 int use_sideband_colors () ;
 int want_color_stderr (int ) ;

__attribute__((used)) static void maybe_colorize_sideband(struct strbuf *dest, const char *src, int n)
{
 int i;

 if (!want_color_stderr(use_sideband_colors())) {
  strbuf_add(dest, src, n);
  return;
 }

 while (0 < n && isspace(*src)) {
  strbuf_addch(dest, *src);
  src++;
  n--;
 }

 for (i = 0; i < ARRAY_SIZE(keywords); i++) {
  struct keyword_entry *p = keywords + i;
  int len = strlen(p->keyword);

  if (n < len)
   continue;






  if (!strncasecmp(p->keyword, src, len) &&
      (len == n || !isalnum(src[len]))) {
   strbuf_addstr(dest, p->color);
   strbuf_add(dest, src, len);
   strbuf_addstr(dest, GIT_COLOR_RESET);
   n -= len;
   src += len;
   break;
  }
 }

 strbuf_add(dest, src, n);
}
