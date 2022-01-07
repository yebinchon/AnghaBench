
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int tempfile; } ;


 int close_tempfile_gently (int ) ;

__attribute__((used)) static inline int close_lock_file_gently(struct lock_file *lk)
{
 return close_tempfile_gently(lk->tempfile);
}
