
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct TYPE_4__ {int file; int use_color; int output_format; } ;
struct rev_info {int diff; int disable_stdin; int no_commit_id; TYPE_2__ diffopt; scalar_t__ abbrev; } ;
struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;
struct TYPE_3__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
typedef int log_tree_opt ;


 int DIFF_FORMAT_PATCH ;
 int GIT_COLOR_NEVER ;
 int REF_NO_DEREF ;
 struct strbuf STRBUF_INIT ;
 int UPDATE_REFS_MSG_ON_ERR ;
 int _ (char*) ;
 int error (int ,char*) ;
 int error_errno (int ,int ) ;
 int fclose (int ) ;
 int file_exists (int ) ;
 int find_commit_subject (char const*,char const**) ;
 int fopen (int ,char*) ;
 char* get_commit_buffer (struct commit*,int *) ;
 int get_dir (struct replay_opts*) ;
 int log_tree_commit (struct rev_info*,struct commit*) ;
 int memset (struct rev_info*,int ,int) ;
 int rebase_path_stopped_sha () ;
 int repo_init_revisions (struct repository*,struct rev_info*,int *) ;
 char* short_commit_name (struct commit*) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strlen (char const*) ;
 int unuse_commit_buffer (struct commit*,char const*) ;
 scalar_t__ update_ref (char*,char*,int *,int *,int ,int ) ;
 int write_message (char const*,int ,int ,int) ;

__attribute__((used)) static int make_patch(struct repository *r,
        struct commit *commit,
        struct replay_opts *opts)
{
 struct strbuf buf = STRBUF_INIT;
 struct rev_info log_tree_opt;
 const char *subject, *p;
 int res = 0;

 p = short_commit_name(commit);
 if (write_message(p, strlen(p), rebase_path_stopped_sha(), 1) < 0)
  return -1;
 if (update_ref("rebase", "REBASE_HEAD", &commit->object.oid,
         ((void*)0), REF_NO_DEREF, UPDATE_REFS_MSG_ON_ERR))
  res |= error(_("could not update %s"), "REBASE_HEAD");

 strbuf_addf(&buf, "%s/patch", get_dir(opts));
 memset(&log_tree_opt, 0, sizeof(log_tree_opt));
 repo_init_revisions(r, &log_tree_opt, ((void*)0));
 log_tree_opt.abbrev = 0;
 log_tree_opt.diff = 1;
 log_tree_opt.diffopt.output_format = DIFF_FORMAT_PATCH;
 log_tree_opt.disable_stdin = 1;
 log_tree_opt.no_commit_id = 1;
 log_tree_opt.diffopt.file = fopen(buf.buf, "w");
 log_tree_opt.diffopt.use_color = GIT_COLOR_NEVER;
 if (!log_tree_opt.diffopt.file)
  res |= error_errno(_("could not open '%s'"), buf.buf);
 else {
  res |= log_tree_commit(&log_tree_opt, commit);
  fclose(log_tree_opt.diffopt.file);
 }
 strbuf_reset(&buf);

 strbuf_addf(&buf, "%s/message", get_dir(opts));
 if (!file_exists(buf.buf)) {
  const char *commit_buffer = get_commit_buffer(commit, ((void*)0));
  find_commit_subject(commit_buffer, &subject);
  res |= write_message(subject, strlen(subject), buf.buf, 1);
  unuse_commit_buffer(commit, commit_buffer);
 }
 strbuf_release(&buf);

 return res;
}
