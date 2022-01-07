
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int tempfile; } ;


 char const* get_tempfile_path (int ) ;

__attribute__((used)) static inline const char *get_lock_file_path(struct lock_file *lk)
{
 return get_tempfile_path(lk->tempfile);
}
