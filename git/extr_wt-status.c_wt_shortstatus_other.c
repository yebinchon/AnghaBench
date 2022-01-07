
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int fp; int prefix; scalar_t__ null_termination; } ;
struct string_list_item {char* string; } ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int WT_STATUS_UNTRACKED ;
 int color (int ,struct wt_status*) ;
 int color_fprintf (int ,int ,char*,char const*) ;
 int fprintf (int ,char*,char const*,char*,int ) ;
 int printf (char*,char const*) ;
 char* quote_path (char*,int ,struct strbuf*) ;
 int stdout ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void wt_shortstatus_other(struct string_list_item *it,
     struct wt_status *s, const char *sign)
{
 if (s->null_termination) {
  fprintf(stdout, "%s %s%c", sign, it->string, 0);
 } else {
  struct strbuf onebuf = STRBUF_INIT;
  const char *one;
  one = quote_path(it->string, s->prefix, &onebuf);
  color_fprintf(s->fp, color(WT_STATUS_UNTRACKED, s), "%s", sign);
  printf(" %s\n", one);
  strbuf_release(&onebuf);
 }
}
