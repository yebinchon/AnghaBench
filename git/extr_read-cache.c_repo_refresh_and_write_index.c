
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int index; } ;
struct pathspec {int dummy; } ;
struct lock_file {int dummy; } ;


 unsigned int COMMIT_LOCK ;
 struct lock_file LOCK_INIT ;
 scalar_t__ refresh_index (int ,unsigned int,struct pathspec const*,char*,char const*) ;
 int repo_hold_locked_index (struct repository*,struct lock_file*,int ) ;
 scalar_t__ write_locked_index (int ,struct lock_file*,unsigned int) ;

int repo_refresh_and_write_index(struct repository *repo,
     unsigned int refresh_flags,
     unsigned int write_flags,
     int gentle,
     const struct pathspec *pathspec,
     char *seen, const char *header_msg)
{
 struct lock_file lock_file = LOCK_INIT;
 int fd, ret = 0;

 fd = repo_hold_locked_index(repo, &lock_file, 0);
 if (!gentle && fd < 0)
  return -1;
 if (refresh_index(repo->index, refresh_flags, pathspec, seen, header_msg))
  ret = 1;
 if (0 <= fd && write_locked_index(repo->index, &lock_file, COMMIT_LOCK | write_flags))
  ret = -1;
 return ret;
}
