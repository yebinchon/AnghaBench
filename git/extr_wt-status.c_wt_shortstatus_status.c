
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status_change_data {char* rename_source; scalar_t__ worktree_status; scalar_t__ index_status; } ;
struct wt_status {int prefix; scalar_t__ null_termination; int fp; } ;
struct string_list_item {char* string; struct wt_status_change_data* util; } ;
struct strbuf {char* buf; } ;


 struct strbuf STRBUF_INIT ;
 int WT_STATUS_CHANGED ;
 int WT_STATUS_UPDATED ;
 int color (int ,struct wt_status*) ;
 int color_fprintf (int ,int ,char*,scalar_t__) ;
 int fprintf (int ,char*,char*,int ) ;
 int printf (char*,char const*) ;
 int putchar (char) ;
 char* quote_path (char*,int ,struct strbuf*) ;
 int stdout ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_release (struct strbuf*) ;
 int * strchr (char const*,char) ;

__attribute__((used)) static void wt_shortstatus_status(struct string_list_item *it,
    struct wt_status *s)
{
 struct wt_status_change_data *d = it->util;

 if (d->index_status)
  color_fprintf(s->fp, color(WT_STATUS_UPDATED, s), "%c", d->index_status);
 else
  putchar(' ');
 if (d->worktree_status)
  color_fprintf(s->fp, color(WT_STATUS_CHANGED, s), "%c", d->worktree_status);
 else
  putchar(' ');
 putchar(' ');
 if (s->null_termination) {
  fprintf(stdout, "%s%c", it->string, 0);
  if (d->rename_source)
   fprintf(stdout, "%s%c", d->rename_source, 0);
 } else {
  struct strbuf onebuf = STRBUF_INIT;
  const char *one;

  if (d->rename_source) {
   one = quote_path(d->rename_source, s->prefix, &onebuf);
   if (*one != '"' && strchr(one, ' ') != ((void*)0)) {
    putchar('"');
    strbuf_addch(&onebuf, '"');
    one = onebuf.buf;
   }
   printf("%s -> ", one);
   strbuf_release(&onebuf);
  }
  one = quote_path(it->string, s->prefix, &onebuf);
  if (*one != '"' && strchr(one, ' ') != ((void*)0)) {
   putchar('"');
   strbuf_addch(&onebuf, '"');
   one = onebuf.buf;
  }
  printf("%s\n", one);
  strbuf_release(&onebuf);
 }
}
