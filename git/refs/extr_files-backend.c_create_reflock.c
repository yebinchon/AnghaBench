
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int dummy; } ;


 int LOCK_NO_DEREF ;
 int get_files_ref_lock_timeout_ms () ;
 scalar_t__ hold_lock_file_for_update_timeout (struct lock_file*,char const*,int ,int ) ;

__attribute__((used)) static int create_reflock(const char *path, void *cb)
{
 struct lock_file *lk = cb;

 return hold_lock_file_for_update_timeout(
   lk, path, LOCK_NO_DEREF,
   get_files_ref_lock_timeout_ms()) < 0 ? -1 : 0;
}
