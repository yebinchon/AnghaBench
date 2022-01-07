
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int fp; int prefix; scalar_t__ null_termination; } ;
struct string_list_item {char* string; } ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int fprintf (int ,char*,char,char const*,char) ;
 char* quote_path (char*,int ,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void wt_porcelain_v2_print_other(
 struct string_list_item *it,
 struct wt_status *s,
 char prefix)
{
 struct strbuf buf = STRBUF_INIT;
 const char *path;
 char eol_char;

 if (s->null_termination) {
  path = it->string;
  eol_char = '\0';
 } else {
  path = quote_path(it->string, s->prefix, &buf);
  eol_char = '\n';
 }

 fprintf(s->fp, "%c %s%c", prefix, path, eol_char);

 strbuf_release(&buf);
}
