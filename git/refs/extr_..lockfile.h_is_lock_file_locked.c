
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int tempfile; } ;


 int is_tempfile_active (int ) ;

__attribute__((used)) static inline int is_lock_file_locked(struct lock_file *lk)
{
 return is_tempfile_active(lk->tempfile);
}
