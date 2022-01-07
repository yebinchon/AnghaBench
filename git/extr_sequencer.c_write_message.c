
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int dummy; } ;


 struct lock_file LOCK_INIT ;
 int _ (char*) ;
 scalar_t__ commit_lock_file (struct lock_file*) ;
 int error (int ,char const*) ;
 int error_errno (int ,char const*) ;
 int hold_lock_file_for_update (struct lock_file*,char const*,int ) ;
 int rollback_lock_file (struct lock_file*) ;
 scalar_t__ write (int,char*,int) ;
 scalar_t__ write_in_full (int,void const*,size_t) ;

__attribute__((used)) static int write_message(const void *buf, size_t len, const char *filename,
    int append_eol)
{
 struct lock_file msg_file = LOCK_INIT;

 int msg_fd = hold_lock_file_for_update(&msg_file, filename, 0);
 if (msg_fd < 0)
  return error_errno(_("could not lock '%s'"), filename);
 if (write_in_full(msg_fd, buf, len) < 0) {
  error_errno(_("could not write to '%s'"), filename);
  rollback_lock_file(&msg_file);
  return -1;
 }
 if (append_eol && write(msg_fd, "\n", 1) < 0) {
  error_errno(_("could not write eol to '%s'"), filename);
  rollback_lock_file(&msg_file);
  return -1;
 }
 if (commit_lock_file(&msg_file) < 0)
  return error(_("failed to finalize '%s'"), filename);

 return 0;
}
