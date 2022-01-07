
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int dummy; } ;


 scalar_t__ alternate_index_output ;
 int commit_lock_file (struct lock_file*) ;
 int commit_lock_file_to (struct lock_file*,scalar_t__) ;

__attribute__((used)) static int commit_locked_index(struct lock_file *lk)
{
 if (alternate_index_output)
  return commit_lock_file_to(lk, alternate_index_output);
 else
  return commit_lock_file(lk);
}
