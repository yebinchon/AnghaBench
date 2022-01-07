
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int tempfile; } ;


 int rename_tempfile (int *,char const*) ;

__attribute__((used)) static inline int commit_lock_file_to(struct lock_file *lk, const char *path)
{
 return rename_tempfile(&lk->tempfile, path);
}
