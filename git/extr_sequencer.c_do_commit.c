
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;
struct object_id {int dummy; } ;


 unsigned int EDIT_MSG ;
 struct strbuf STRBUF_INIT ;
 int SUMMARY_SHOW_AUTHOR_DATE ;
 unsigned int VERIFY_MSG ;
 int _ (char*) ;
 int error_errno (int ,char const*) ;
 int git_path_cherry_pick_head (struct repository*) ;
 int git_path_merge_msg (struct repository*) ;
 int is_rebase_i (struct replay_opts*) ;
 int print_commit_summary (struct repository*,int *,struct object_id*,int ) ;
 int run_git_commit (struct repository*,char const*,struct replay_opts*,unsigned int) ;
 scalar_t__ strbuf_read_file (struct strbuf*,char const*,int) ;
 int strbuf_release (struct strbuf*) ;
 int try_to_commit (struct repository*,struct strbuf*,char const*,struct replay_opts*,unsigned int,struct object_id*) ;
 int unlink (int ) ;

__attribute__((used)) static int do_commit(struct repository *r,
       const char *msg_file, const char *author,
       struct replay_opts *opts, unsigned int flags)
{
 int res = 1;

 if (!(flags & EDIT_MSG) && !(flags & VERIFY_MSG)) {
  struct object_id oid;
  struct strbuf sb = STRBUF_INIT;

  if (msg_file && strbuf_read_file(&sb, msg_file, 2048) < 0)
   return error_errno(_("unable to read commit message "
          "from '%s'"),
        msg_file);

  res = try_to_commit(r, msg_file ? &sb : ((void*)0),
        author, opts, flags, &oid);
  strbuf_release(&sb);
  if (!res) {
   unlink(git_path_cherry_pick_head(r));
   unlink(git_path_merge_msg(r));
   if (!is_rebase_i(opts))
    print_commit_summary(r, ((void*)0), &oid,
      SUMMARY_SHOW_AUTHOR_DATE);
   return res;
  }
 }
 if (res == 1)
  return run_git_commit(r, msg_file, opts, flags);

 return res;
}
