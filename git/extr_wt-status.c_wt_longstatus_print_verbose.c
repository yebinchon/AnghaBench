
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wt_status {scalar_t__ detect_rename; scalar_t__ rename_limit; scalar_t__ rename_score; scalar_t__ fp; int verbose; scalar_t__ committable; int reference; scalar_t__ is_initial; int repo; } ;
struct setup_revision_opt {int def; } ;
struct TYPE_3__ {int allow_textconv; } ;
struct TYPE_4__ {int ita_invisible_in_index; scalar_t__ detect_rename; scalar_t__ rename_limit; scalar_t__ rename_score; scalar_t__ file; char* a_prefix; char* b_prefix; scalar_t__ use_color; scalar_t__ close_file; int output_format; TYPE_1__ flags; } ;
struct rev_info {TYPE_2__ diffopt; } ;
typedef int opt ;


 int DIFF_FORMAT_PATCH ;
 int WT_STATUS_HEADER ;
 char* _ (char*) ;
 char* color (int ,struct wt_status*) ;
 int empty_tree_oid_hex () ;
 int memset (struct setup_revision_opt*,int ,int) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int run_diff_files (struct rev_info*,int ) ;
 int run_diff_index (struct rev_info*,int) ;
 int setup_revisions (int ,int *,struct rev_info*,struct setup_revision_opt*) ;
 int setup_work_tree () ;
 int status_printf_ln (struct wt_status*,char const*,char*) ;
 scalar_t__ stdout ;
 int wt_longstatus_print_trailer (struct wt_status*) ;
 int wt_status_add_cut_line (scalar_t__) ;
 scalar_t__ wt_status_check_worktree_changes (struct wt_status*,int*) ;

__attribute__((used)) static void wt_longstatus_print_verbose(struct wt_status *s)
{
 struct rev_info rev;
 struct setup_revision_opt opt;
 int dirty_submodules;
 const char *c = color(WT_STATUS_HEADER, s);

 repo_init_revisions(s->repo, &rev, ((void*)0));
 rev.diffopt.flags.allow_textconv = 1;
 rev.diffopt.ita_invisible_in_index = 1;

 memset(&opt, 0, sizeof(opt));
 opt.def = s->is_initial ? empty_tree_oid_hex() : s->reference;
 setup_revisions(0, ((void*)0), &rev, &opt);

 rev.diffopt.output_format |= DIFF_FORMAT_PATCH;
 rev.diffopt.detect_rename = s->detect_rename >= 0 ? s->detect_rename : rev.diffopt.detect_rename;
 rev.diffopt.rename_limit = s->rename_limit >= 0 ? s->rename_limit : rev.diffopt.rename_limit;
 rev.diffopt.rename_score = s->rename_score >= 0 ? s->rename_score : rev.diffopt.rename_score;
 rev.diffopt.file = s->fp;
 rev.diffopt.close_file = 0;
 if (s->fp != stdout) {
  rev.diffopt.use_color = 0;
  wt_status_add_cut_line(s->fp);
 }
 if (s->verbose > 1 && s->committable) {

  if (s->fp != stdout)
   wt_longstatus_print_trailer(s);
  status_printf_ln(s, c, _("Changes to be committed:"));
  rev.diffopt.a_prefix = "c/";
  rev.diffopt.b_prefix = "i/";
 }
 run_diff_index(&rev, 1);
 if (s->verbose > 1 &&
     wt_status_check_worktree_changes(s, &dirty_submodules)) {
  status_printf_ln(s, c,
   "--------------------------------------------------");
  status_printf_ln(s, c, _("Changes not staged for commit:"));
  setup_work_tree();
  rev.diffopt.a_prefix = "i/";
  rev.diffopt.b_prefix = "w/";
  run_diff_files(&rev, 0);
 }
}
