
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int tempfile; } ;
typedef int FILE ;


 int * get_tempfile_fp (int ) ;

__attribute__((used)) static inline FILE *get_lock_file_fp(struct lock_file *lk)
{
 return get_tempfile_fp(lk->tempfile);
}
