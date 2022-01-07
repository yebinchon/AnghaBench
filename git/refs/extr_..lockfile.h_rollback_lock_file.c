
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int tempfile; } ;


 int delete_tempfile (int *) ;

__attribute__((used)) static inline void rollback_lock_file(struct lock_file *lk)
{
 delete_tempfile(&lk->tempfile);
}
