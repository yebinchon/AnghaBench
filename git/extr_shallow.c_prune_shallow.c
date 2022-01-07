
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct lock_file {int dummy; } ;


 int LOCK_DIE_ON_ERROR ;
 struct lock_file LOCK_INIT ;
 unsigned int PRUNE_QUICK ;
 unsigned int PRUNE_SHOW_ONLY ;
 unsigned int QUICK ;
 unsigned int SEEN_ONLY ;
 struct strbuf STRBUF_INIT ;
 unsigned int VERBOSE ;
 int check_shallow_file_for_update (int ) ;
 int commit_lock_file (struct lock_file*) ;
 int die_errno (char*,int ) ;
 int get_lock_file_path (struct lock_file*) ;
 int git_path_shallow (int ) ;
 int hold_lock_file_for_update (struct lock_file*,int ,int ) ;
 int rollback_lock_file (struct lock_file*) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 int unlink (int ) ;
 scalar_t__ write_in_full (int,int ,int ) ;
 scalar_t__ write_shallow_commits_1 (struct strbuf*,int ,int *,unsigned int) ;

void prune_shallow(unsigned options)
{
 struct lock_file shallow_lock = LOCK_INIT;
 struct strbuf sb = STRBUF_INIT;
 unsigned flags = SEEN_ONLY;
 int fd;

 if (options & PRUNE_QUICK)
  flags |= QUICK;

 if (options & PRUNE_SHOW_ONLY) {
  flags |= VERBOSE;
  write_shallow_commits_1(&sb, 0, ((void*)0), flags);
  strbuf_release(&sb);
  return;
 }
 fd = hold_lock_file_for_update(&shallow_lock,
           git_path_shallow(the_repository),
           LOCK_DIE_ON_ERROR);
 check_shallow_file_for_update(the_repository);
 if (write_shallow_commits_1(&sb, 0, ((void*)0), flags)) {
  if (write_in_full(fd, sb.buf, sb.len) < 0)
   die_errno("failed to write to %s",
      get_lock_file_path(&shallow_lock));
  commit_lock_file(&shallow_lock);
 } else {
  unlink(git_path_shallow(the_repository));
  rollback_lock_file(&shallow_lock);
 }
 strbuf_release(&sb);
}
