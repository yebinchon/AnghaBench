
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status_change_data {int stagemask; } ;
struct wt_status {int prefix; } ;
struct string_list_item {int string; struct wt_status_change_data* util; } ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int WT_STATUS_HEADER ;
 int WT_STATUS_UNMERGED ;
 char* color (int ,struct wt_status*) ;
 int maxwidth (char* (*) (int ),int,int) ;
 int memset (char*,char,int) ;
 char* quote_path (int ,int ,struct strbuf*) ;
 int status_printf (struct wt_status*,char*,char*) ;
 int status_printf_more (struct wt_status*,char const*,char*,char const*,int,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ strlen (char*) ;
 int utf8_strwidth (char const*) ;
 char* wt_status_unmerged_status_string (int ) ;
 char* xmallocz (int) ;

__attribute__((used)) static void wt_longstatus_print_unmerged_data(struct wt_status *s,
           struct string_list_item *it)
{
 const char *c = color(WT_STATUS_UNMERGED, s);
 struct wt_status_change_data *d = it->util;
 struct strbuf onebuf = STRBUF_INIT;
 static char *padding;
 static int label_width;
 const char *one, *how;
 int len;

 if (!padding) {
  label_width = maxwidth(wt_status_unmerged_status_string, 1, 7);
  label_width += strlen(" ");
  padding = xmallocz(label_width);
  memset(padding, ' ', label_width);
 }

 one = quote_path(it->string, s->prefix, &onebuf);
 status_printf(s, color(WT_STATUS_HEADER, s), "\t");

 how = wt_status_unmerged_status_string(d->stagemask);
 len = label_width - utf8_strwidth(how);
 status_printf_more(s, c, "%s%.*s%s\n", how, len, padding, one);
 strbuf_release(&onebuf);
}
