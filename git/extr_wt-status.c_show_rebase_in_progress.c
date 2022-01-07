
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int onto; scalar_t__ branch; scalar_t__ rebase_in_progress; } ;
struct wt_status {int amend; scalar_t__ hints; TYPE_1__ state; int repo; } ;
struct stat {int dummy; } ;


 int _ (char*) ;
 int git_path_merge_msg (int ) ;
 scalar_t__ has_unmerged (struct wt_status*) ;
 int print_rebase_state (struct wt_status*,char const*) ;
 int show_rebase_information (struct wt_status*,char const*) ;
 scalar_t__ split_commit_in_progress (struct wt_status*) ;
 int stat (int ,struct stat*) ;
 int status_printf_ln (struct wt_status*,char const*,int ,...) ;
 int wt_longstatus_print_trailer (struct wt_status*) ;

__attribute__((used)) static void show_rebase_in_progress(struct wt_status *s,
        const char *color)
{
 struct stat st;

 show_rebase_information(s, color);
 if (has_unmerged(s)) {
  print_rebase_state(s, color);
  if (s->hints) {
   status_printf_ln(s, color,
    _("  (fix conflicts and then run \"git rebase --continue\")"));
   status_printf_ln(s, color,
    _("  (use \"git rebase --skip\" to skip this patch)"));
   status_printf_ln(s, color,
    _("  (use \"git rebase --abort\" to check out the original branch)"));
  }
 } else if (s->state.rebase_in_progress ||
     !stat(git_path_merge_msg(s->repo), &st)) {
  print_rebase_state(s, color);
  if (s->hints)
   status_printf_ln(s, color,
    _("  (all conflicts fixed: run \"git rebase --continue\")"));
 } else if (split_commit_in_progress(s)) {
  if (s->state.branch)
   status_printf_ln(s, color,
      _("You are currently splitting a commit while rebasing branch '%s' on '%s'."),
      s->state.branch,
      s->state.onto);
  else
   status_printf_ln(s, color,
      _("You are currently splitting a commit during a rebase."));
  if (s->hints)
   status_printf_ln(s, color,
    _("  (Once your working directory is clean, run \"git rebase --continue\")"));
 } else {
  if (s->state.branch)
   status_printf_ln(s, color,
      _("You are currently editing a commit while rebasing branch '%s' on '%s'."),
      s->state.branch,
      s->state.onto);
  else
   status_printf_ln(s, color,
      _("You are currently editing a commit during a rebase."));
  if (s->hints && !s->amend) {
   status_printf_ln(s, color,
    _("  (use \"git commit --amend\" to amend the current commit)"));
   status_printf_ln(s, color,
    _("  (use \"git rebase --continue\" once you are satisfied with your changes)"));
  }
 }
 wt_longstatus_print_trailer(s);
}
