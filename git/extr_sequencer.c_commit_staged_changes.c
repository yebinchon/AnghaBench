
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct todo_list {int dummy; } ;
struct strbuf {int buf; } ;
struct repository {int dummy; } ;
struct TYPE_3__ {char* buf; int len; } ;
struct replay_opts {scalar_t__ current_fixup_count; TYPE_1__ current_fixups; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 unsigned int ALLOW_EMPTY ;
 unsigned int AMEND_MSG ;
 int BUG (char*,char const*) ;
 unsigned int CLEANUP_MSG ;
 unsigned int EDIT_MSG ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int error (int ,...) ;
 scalar_t__ file_exists (char const*) ;
 char* get_commit_buffer (struct commit*,int *) ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 scalar_t__ get_oid_hex (int ,struct object_id*) ;
 char* git_path_cherry_pick_head (struct repository*) ;
 char const* git_path_merge_head (struct repository*) ;
 int has_uncommitted_changes (struct repository*,int ) ;
 scalar_t__ has_unstaged_changes (struct repository*,int) ;
 scalar_t__ is_fixup (int ) ;
 int oideq (struct object_id*,struct object_id*) ;
 scalar_t__ parse_head (struct repository*,struct commit**) ;
 int peek_command (struct todo_list*,int ) ;
 int read_oneliner (struct strbuf*,char const*,int ) ;
 char const* rebase_path_amend () ;
 char const* rebase_path_current_fixups () ;
 char const* rebase_path_fixup_msg () ;
 int * rebase_path_message () ;
 char const* rebase_path_squash_msg () ;
 char const* rebase_path_stopped_sha () ;
 scalar_t__ run_git_commit (struct repository*,int *,struct replay_opts*,unsigned int) ;
 int starts_with (char const*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (TYPE_1__*) ;
 int strbuf_setlen (TYPE_1__*,int) ;
 int strlen (char const*) ;
 int strstr (char const*,char*) ;
 scalar_t__ unlink (char const*) ;
 int unuse_commit_buffer (struct commit*,char const*) ;
 scalar_t__ write_message (char const*,int,char const*,int ) ;

__attribute__((used)) static int commit_staged_changes(struct repository *r,
     struct replay_opts *opts,
     struct todo_list *todo_list)
{
 unsigned int flags = ALLOW_EMPTY | EDIT_MSG;
 unsigned int final_fixup = 0, is_clean;

 if (has_unstaged_changes(r, 1))
  return error(_("cannot rebase: You have unstaged changes."));

 is_clean = !has_uncommitted_changes(r, 0);

 if (file_exists(rebase_path_amend())) {
  struct strbuf rev = STRBUF_INIT;
  struct object_id head, to_amend;

  if (get_oid("HEAD", &head))
   return error(_("cannot amend non-existing commit"));
  if (!read_oneliner(&rev, rebase_path_amend(), 0))
   return error(_("invalid file: '%s'"), rebase_path_amend());
  if (get_oid_hex(rev.buf, &to_amend))
   return error(_("invalid contents: '%s'"),
    rebase_path_amend());
  if (!is_clean && !oideq(&head, &to_amend))
   return error(_("\nYou have uncommitted changes in your "
           "working tree. Please, commit them\n"
           "first and then run 'git rebase "
           "--continue' again."));







  if (!is_clean || !opts->current_fixup_count)
   ;
  else if (!oideq(&head, &to_amend) ||
    !file_exists(rebase_path_stopped_sha())) {

   if (!is_fixup(peek_command(todo_list, 0))) {
    unlink(rebase_path_fixup_msg());
    unlink(rebase_path_squash_msg());
    unlink(rebase_path_current_fixups());
    strbuf_reset(&opts->current_fixups);
    opts->current_fixup_count = 0;
   }
  } else {

   const char *p = opts->current_fixups.buf;
   int len = opts->current_fixups.len;

   opts->current_fixup_count--;
   if (!len)
    BUG("Incorrect current_fixups:\n%s", p);
   while (len && p[len - 1] != '\n')
    len--;
   strbuf_setlen(&opts->current_fixups, len);
   if (write_message(p, len, rebase_path_current_fixups(),
       0) < 0)
    return error(_("could not write file: '%s'"),
          rebase_path_current_fixups());
   if (opts->current_fixup_count > 0 &&
       !is_fixup(peek_command(todo_list, 0))) {
    final_fixup = 1;






    if (!starts_with(p, "squash ") &&
        !strstr(p, "\nsquash "))
     flags = (flags & ~EDIT_MSG) | CLEANUP_MSG;
   } else if (is_fixup(peek_command(todo_list, 0))) {




    struct commit *commit;
    const char *path = rebase_path_squash_msg();

    if (parse_head(r, &commit) ||
        !(p = get_commit_buffer(commit, ((void*)0))) ||
        write_message(p, strlen(p), path, 0)) {
     unuse_commit_buffer(commit, p);
     return error(_("could not write file: "
             "'%s'"), path);
    }
    unuse_commit_buffer(commit, p);
   }
  }

  strbuf_release(&rev);
  flags |= AMEND_MSG;
 }

 if (is_clean) {
  const char *cherry_pick_head = git_path_cherry_pick_head(r);

  if (file_exists(cherry_pick_head) && unlink(cherry_pick_head))
   return error(_("could not remove CHERRY_PICK_HEAD"));
  if (!final_fixup)
   return 0;
 }

 if (run_git_commit(r, final_fixup ? ((void*)0) : rebase_path_message(),
      opts, flags))
  return error(_("could not commit staged changes."));
 unlink(rebase_path_amend());
 unlink(git_path_merge_head(r));
 if (final_fixup) {
  unlink(rebase_path_fixup_msg());
  unlink(rebase_path_squash_msg());
 }
 if (opts->current_fixup_count > 0) {




  unlink(rebase_path_current_fixups());
  strbuf_reset(&opts->current_fixups);
  opts->current_fixup_count = 0;
 }
 return 0;
}
