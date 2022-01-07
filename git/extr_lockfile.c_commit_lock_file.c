
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int dummy; } ;


 scalar_t__ commit_lock_file_to (struct lock_file*,char*) ;
 int errno ;
 int free (char*) ;
 char* get_locked_file_path (struct lock_file*) ;

int commit_lock_file(struct lock_file *lk)
{
 char *result_path = get_locked_file_path(lk);

 if (commit_lock_file_to(lk, result_path)) {
  int save_errno = errno;
  free(result_path);
  errno = save_errno;
  return -1;
 }
 free(result_path);
 return 0;
}
