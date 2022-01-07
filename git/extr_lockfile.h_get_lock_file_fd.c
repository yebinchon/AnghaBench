
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int tempfile; } ;


 int get_tempfile_fd (int ) ;

__attribute__((used)) static inline int get_lock_file_fd(struct lock_file *lk)
{
 return get_tempfile_fd(lk->tempfile);
}
