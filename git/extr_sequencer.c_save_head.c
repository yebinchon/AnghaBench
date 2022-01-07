
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct lock_file {int dummy; } ;
typedef scalar_t__ ssize_t ;


 struct lock_file LOCK_INIT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ commit_lock_file (struct lock_file*) ;
 int error (int ,int ) ;
 int error_errno (int ,...) ;
 int git_path_head_file () ;
 int hold_lock_file_for_update (struct lock_file*,int ,int ) ;
 int rollback_lock_file (struct lock_file*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ write_in_full (int,int ,int ) ;

__attribute__((used)) static int save_head(const char *head)
{
 struct lock_file head_lock = LOCK_INIT;
 struct strbuf buf = STRBUF_INIT;
 int fd;
 ssize_t written;

 fd = hold_lock_file_for_update(&head_lock, git_path_head_file(), 0);
 if (fd < 0)
  return error_errno(_("could not lock HEAD"));
 strbuf_addf(&buf, "%s\n", head);
 written = write_in_full(fd, buf.buf, buf.len);
 strbuf_release(&buf);
 if (written < 0) {
  error_errno(_("could not write to '%s'"), git_path_head_file());
  rollback_lock_file(&head_lock);
  return -1;
 }
 if (commit_lock_file(&head_lock) < 0)
  return error(_("failed to finalize '%s'"), git_path_head_file());
 return 0;
}
