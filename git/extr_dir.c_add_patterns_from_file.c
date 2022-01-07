
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_struct {int unmanaged_exclude_files; } ;


 int add_patterns_from_file_1 (struct dir_struct*,char const*,int *) ;

void add_patterns_from_file(struct dir_struct *dir, const char *fname)
{
 dir->unmanaged_exclude_files++;
 add_patterns_from_file_1(dir, fname, ((void*)0));
}
