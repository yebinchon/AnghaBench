
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct oid_array {int dummy; } ;
struct lock_file {int dummy; } ;


 int LOCK_DIE_ON_ERROR ;
 struct strbuf STRBUF_INIT ;
 int check_shallow_file_for_update (int ) ;
 int die_errno (char*,char*) ;
 char* get_lock_file_path (struct lock_file*) ;
 int git_path_shallow (int ) ;
 int hold_lock_file_for_update (struct lock_file*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 scalar_t__ write_in_full (int,int ,int ) ;
 scalar_t__ write_shallow_commits (struct strbuf*,int ,struct oid_array const*) ;

void setup_alternate_shallow(struct lock_file *shallow_lock,
        const char **alternate_shallow_file,
        const struct oid_array *extra)
{
 struct strbuf sb = STRBUF_INIT;
 int fd;

 fd = hold_lock_file_for_update(shallow_lock,
           git_path_shallow(the_repository),
           LOCK_DIE_ON_ERROR);
 check_shallow_file_for_update(the_repository);
 if (write_shallow_commits(&sb, 0, extra)) {
  if (write_in_full(fd, sb.buf, sb.len) < 0)
   die_errno("failed to write to %s",
      get_lock_file_path(shallow_lock));
  *alternate_shallow_file = get_lock_file_path(shallow_lock);
 } else




  *alternate_shallow_file = "";
 strbuf_release(&sb);
}
