
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_attr_file ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int attr_file_free ;

void git_attr_file__free(git_attr_file *file)
{
 if (!file)
  return;
 GIT_REFCOUNT_DEC(file, attr_file_free);
}
