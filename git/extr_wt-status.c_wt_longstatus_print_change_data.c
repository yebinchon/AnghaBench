
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status_change_data {int index_status; int dirty_submodule; int worktree_status; int rename_status; char* rename_source; int new_submodule_commits; } ;
struct wt_status {int prefix; } ;
struct string_list_item {char* string; struct wt_status_change_data* util; } ;
struct strbuf {int buf; scalar_t__ len; } ;


 int BUG (char*,int) ;
 int DIRTY_SUBMODULE_MODIFIED ;
 int DIRTY_SUBMODULE_UNTRACKED ;
 int GIT_COLOR_NORMAL ;
 struct strbuf STRBUF_INIT ;

 int WT_STATUS_HEADER ;

 char* _ (char*) ;
 int assert (int) ;
 char* color (int,struct wt_status*) ;
 int maxwidth (char* (*) (int),char,char) ;
 int memset (char*,char,int) ;
 char* quote_path (char*,int ,struct strbuf*) ;
 int status_printf (struct wt_status*,char*,char*) ;
 int status_printf_more (struct wt_status*,char const*,char*,...) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 int utf8_strwidth (char const*) ;
 char* wt_status_diff_status_string (int) ;
 char* xmallocz (int) ;

__attribute__((used)) static void wt_longstatus_print_change_data(struct wt_status *s,
         int change_type,
         struct string_list_item *it)
{
 struct wt_status_change_data *d = it->util;
 const char *c = color(change_type, s);
 int status;
 char *one_name;
 char *two_name;
 const char *one, *two;
 struct strbuf onebuf = STRBUF_INIT, twobuf = STRBUF_INIT;
 struct strbuf extra = STRBUF_INIT;
 static char *padding;
 static int label_width;
 const char *what;
 int len;

 if (!padding) {

  label_width = maxwidth(wt_status_diff_status_string, 'A', 'Z');
  label_width += strlen(" ");
  padding = xmallocz(label_width);
  memset(padding, ' ', label_width);
 }

 one_name = two_name = it->string;
 switch (change_type) {
 case 128:
  status = d->index_status;
  break;
 case 129:
  if (d->new_submodule_commits || d->dirty_submodule) {
   strbuf_addstr(&extra, " (");
   if (d->new_submodule_commits)
    strbuf_addstr(&extra, _("new commits, "));
   if (d->dirty_submodule & DIRTY_SUBMODULE_MODIFIED)
    strbuf_addstr(&extra, _("modified content, "));
   if (d->dirty_submodule & DIRTY_SUBMODULE_UNTRACKED)
    strbuf_addstr(&extra, _("untracked content, "));
   strbuf_setlen(&extra, extra.len - 2);
   strbuf_addch(&extra, ')');
  }
  status = d->worktree_status;
  break;
 default:
  BUG("unhandled change_type %d in wt_longstatus_print_change_data",
      change_type);
 }






 if (d->rename_status == status)
  one_name = d->rename_source;

 one = quote_path(one_name, s->prefix, &onebuf);
 two = quote_path(two_name, s->prefix, &twobuf);

 status_printf(s, color(WT_STATUS_HEADER, s), "\t");
 what = wt_status_diff_status_string(status);
 if (!what)
  BUG("unhandled diff status %c", status);
 len = label_width - utf8_strwidth(what);
 assert(len >= 0);
 if (one_name != two_name)
  status_printf_more(s, c, "%s%.*s%s -> %s",
       what, len, padding, one, two);
 else
  status_printf_more(s, c, "%s%.*s%s",
       what, len, padding, one);
 if (extra.len) {
  status_printf_more(s, color(WT_STATUS_HEADER, s), "%s", extra.buf);
  strbuf_release(&extra);
 }
 status_printf_more(s, GIT_COLOR_NORMAL, "\n");
 strbuf_release(&onebuf);
 strbuf_release(&twobuf);
}
