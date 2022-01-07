
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int lock_reason_valid; char const* lock_reason; } ;
struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int assert (int) ;
 int die_errno (int ,int ) ;
 scalar_t__ file_exists (int ) ;
 int is_main_worktree (struct worktree*) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 char const* strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strbuf_read_file (struct strbuf*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_trim (struct strbuf*) ;
 int worktree_git_path (struct worktree*,char*) ;

const char *worktree_lock_reason(struct worktree *wt)
{
 assert(!is_main_worktree(wt));

 if (!wt->lock_reason_valid) {
  struct strbuf path = STRBUF_INIT;

  strbuf_addstr(&path, worktree_git_path(wt, "locked"));
  if (file_exists(path.buf)) {
   struct strbuf lock_reason = STRBUF_INIT;
   if (strbuf_read_file(&lock_reason, path.buf, 0) < 0)
    die_errno(_("failed to read '%s'"), path.buf);
   strbuf_trim(&lock_reason);
   wt->lock_reason = strbuf_detach(&lock_reason, ((void*)0));
  } else
   wt->lock_reason = ((void*)0);
  wt->lock_reason_valid = 1;
  strbuf_release(&path);
 }

 return wt->lock_reason;
}
