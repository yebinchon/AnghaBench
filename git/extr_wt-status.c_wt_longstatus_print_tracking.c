
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct wt_status {int fp; scalar_t__ display_comment_prefix; int ahead_behind_flags; int branch; int is_initial; } ;
struct strbuf {char* buf; } ;
struct branch {int dummy; } ;


 int AB_DELAY_WARNING_IN_MS ;
 int AHEAD_BEHIND_FULL ;
 struct strbuf STRBUF_INIT ;
 int WT_STATUS_HEADER ;
 int _ (char*) ;
 scalar_t__ advice_status_ahead_behind_warning ;
 int assert (int ) ;
 struct branch* branch_get (char const*) ;
 int color (int ,struct wt_status*) ;
 int color_fprintf_ln (int ,int ,char*,...) ;
 char comment_line_char ;
 int format_tracking_info (struct branch*,struct strbuf*,int ) ;
 int fputs (char*,int ) ;
 int getnanotime () ;
 int skip_prefix (int ,char*,char const**) ;
 int strbuf_addf (struct strbuf*,int ,int) ;
 int strbuf_release (struct strbuf*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void wt_longstatus_print_tracking(struct wt_status *s)
{
 struct strbuf sb = STRBUF_INIT;
 const char *cp, *ep, *branch_name;
 struct branch *branch;
 char comment_line_string[3];
 int i;
 uint64_t t_begin = 0;

 assert(s->branch && !s->is_initial);
 if (!skip_prefix(s->branch, "refs/heads/", &branch_name))
  return;
 branch = branch_get(branch_name);

 t_begin = getnanotime();

 if (!format_tracking_info(branch, &sb, s->ahead_behind_flags))
  return;

 if (advice_status_ahead_behind_warning &&
     s->ahead_behind_flags == AHEAD_BEHIND_FULL) {
  uint64_t t_delta_in_ms = (getnanotime() - t_begin) / 1000000;
  if (t_delta_in_ms > AB_DELAY_WARNING_IN_MS) {
   strbuf_addf(&sb, _("\n"
        "It took %.2f seconds to compute the branch ahead/behind values.\n"
        "You can use '--no-ahead-behind' to avoid this.\n"),
        t_delta_in_ms / 1000.0);
  }
 }

 i = 0;
 if (s->display_comment_prefix) {
  comment_line_string[i++] = comment_line_char;
  comment_line_string[i++] = ' ';
 }
 comment_line_string[i] = '\0';

 for (cp = sb.buf; (ep = strchr(cp, '\n')) != ((void*)0); cp = ep + 1)
  color_fprintf_ln(s->fp, color(WT_STATUS_HEADER, s),
     "%s%.*s", comment_line_string,
     (int)(ep - cp), cp);
 if (s->display_comment_prefix)
  color_fprintf_ln(s->fp, color(WT_STATUS_HEADER, s), "%c",
     comment_line_char);
 else
  fputs("\n", s->fp);
 strbuf_release(&sb);
}
