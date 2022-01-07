
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status_change_data {int stagemask; } ;
struct wt_status {int prefix; scalar_t__ null_termination; int fp; } ;
struct string_list_item {char* string; struct wt_status_change_data* util; } ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int WT_STATUS_UNMERGED ;
 int color (int ,struct wt_status*) ;
 int color_fprintf (int ,int ,char*,char const*) ;
 int fprintf (int ,char*,char*,int ) ;
 int printf (char*,char const*) ;
 char* quote_path (char*,int ,struct strbuf*) ;
 int stdout ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void wt_shortstatus_unmerged(struct string_list_item *it,
      struct wt_status *s)
{
 struct wt_status_change_data *d = it->util;
 const char *how = "??";

 switch (d->stagemask) {
 case 1: how = "DD"; break;
 case 2: how = "AU"; break;
 case 3: how = "UD"; break;
 case 4: how = "UA"; break;
 case 5: how = "DU"; break;
 case 6: how = "AA"; break;
 case 7: how = "UU"; break;
 }
 color_fprintf(s->fp, color(WT_STATUS_UNMERGED, s), "%s", how);
 if (s->null_termination) {
  fprintf(stdout, " %s%c", it->string, 0);
 } else {
  struct strbuf onebuf = STRBUF_INIT;
  const char *one;
  one = quote_path(it->string, s->prefix, &onebuf);
  printf(" %s\n", one);
  strbuf_release(&onebuf);
 }
}
