
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct TYPE_2__ {int output_format; scalar_t__ break_opt; int detect_rename; } ;
struct rev_info {int diff; int verbose_header; int show_root_diff; int always_show_header; int use_terminator; TYPE_1__ diffopt; } ;
struct repository {int dummy; } ;
struct pretty_print_context {int member_0; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 int DIFF_DETECT_RENAME ;
 int DIFF_FORMAT_SHORTSTAT ;
 int DIFF_FORMAT_SUMMARY ;
 struct strbuf STRBUF_INIT ;
 unsigned int SUMMARY_INITIAL_COMMIT ;
 unsigned int SUMMARY_SHOW_AUTHOR_DATE ;
 char* _ (char*) ;
 scalar_t__ advice_implicit_identity ;
 int committer_ident_sufficiently_given () ;
 int die (char*) ;
 int die_errno (char*) ;
 int diff_setup_done (TYPE_1__*) ;
 int format_commit_message (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ;
 int get_commit_format (int ,struct rev_info*) ;
 char* implicit_ident_advice () ;
 int log_tree_commit (struct rev_info*,struct commit*) ;
 struct commit* lookup_commit (struct repository*,struct object_id const*) ;
 scalar_t__ parse_commit (struct commit*) ;
 int printf (char*,char const*,char*) ;
 int repo_init_revisions (struct repository*,struct rev_info*,char const*) ;
 char* resolve_ref_unsafe (char*,int ,int *,int *) ;
 int setup_revisions (int ,int *,struct rev_info*,int *) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strbuf_addbuf_percentquote (struct strbuf*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 scalar_t__ strbuf_cmp (struct strbuf*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char*) ;

void print_commit_summary(struct repository *r,
     const char *prefix,
     const struct object_id *oid,
     unsigned int flags)
{
 struct rev_info rev;
 struct commit *commit;
 struct strbuf format = STRBUF_INIT;
 const char *head;
 struct pretty_print_context pctx = {0};
 struct strbuf author_ident = STRBUF_INIT;
 struct strbuf committer_ident = STRBUF_INIT;

 commit = lookup_commit(r, oid);
 if (!commit)
  die(_("couldn't look up newly created commit"));
 if (parse_commit(commit))
  die(_("could not parse newly created commit"));

 strbuf_addstr(&format, "format:%h] %s");

 format_commit_message(commit, "%an <%ae>", &author_ident, &pctx);
 format_commit_message(commit, "%cn <%ce>", &committer_ident, &pctx);
 if (strbuf_cmp(&author_ident, &committer_ident)) {
  strbuf_addstr(&format, "\n Author: ");
  strbuf_addbuf_percentquote(&format, &author_ident);
 }
 if (flags & SUMMARY_SHOW_AUTHOR_DATE) {
  struct strbuf date = STRBUF_INIT;

  format_commit_message(commit, "%ad", &date, &pctx);
  strbuf_addstr(&format, "\n Date: ");
  strbuf_addbuf_percentquote(&format, &date);
  strbuf_release(&date);
 }
 if (!committer_ident_sufficiently_given()) {
  strbuf_addstr(&format, "\n Committer: ");
  strbuf_addbuf_percentquote(&format, &committer_ident);
  if (advice_implicit_identity) {
   strbuf_addch(&format, '\n');
   strbuf_addstr(&format, implicit_ident_advice());
  }
 }
 strbuf_release(&author_ident);
 strbuf_release(&committer_ident);

 repo_init_revisions(r, &rev, prefix);
 setup_revisions(0, ((void*)0), &rev, ((void*)0));

 rev.diff = 1;
 rev.diffopt.output_format =
  DIFF_FORMAT_SHORTSTAT | DIFF_FORMAT_SUMMARY;

 rev.verbose_header = 1;
 rev.show_root_diff = 1;
 get_commit_format(format.buf, &rev);
 rev.always_show_header = 0;
 rev.diffopt.detect_rename = DIFF_DETECT_RENAME;
 rev.diffopt.break_opt = 0;
 diff_setup_done(&rev.diffopt);

 head = resolve_ref_unsafe("HEAD", 0, ((void*)0), ((void*)0));
 if (!head)
  die_errno(_("unable to resolve HEAD after creating commit"));
 if (!strcmp(head, "HEAD"))
  head = _("detached HEAD");
 else
  skip_prefix(head, "refs/heads/", &head);
 printf("[%s%s ", head, (flags & SUMMARY_INITIAL_COMMIT) ?
      _(" (root-commit)") : "");

 if (!log_tree_commit(&rev, commit)) {
  rev.always_show_header = 1;
  rev.use_terminator = 1;
  log_tree_commit(&rev, commit);
 }

 strbuf_release(&format);
}
