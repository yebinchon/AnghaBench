
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int dummy; } ;


 int hold_lock_file_for_update_timeout (struct lock_file*,char const*,int,int ) ;

__attribute__((used)) static inline int hold_lock_file_for_update(
  struct lock_file *lk, const char *path,
  int flags)
{
 return hold_lock_file_for_update_timeout(lk, path, flags, 0);
}
