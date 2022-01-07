
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct common_dir {int is_common; scalar_t__ is_dir; } ;



__attribute__((used)) static int check_common(const char *unmatched, void *value, void *baton)
{
 struct common_dir *dir = value;

 if (dir->is_dir && (unmatched[0] == 0 || unmatched[0] == '/'))
  return dir->is_common;

 if (!dir->is_dir && unmatched[0] == 0)
  return dir->is_common;

 return 0;
}
