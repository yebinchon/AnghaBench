
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; scalar_t__ path; } ;
typedef TYPE_1__ git_merge_file_result ;


 int git__free (char*) ;

void git_merge_file_result_free(git_merge_file_result *result)
{
 if (result == ((void*)0))
  return;

 git__free((char *)result->path);
 git__free((char *)result->ptr);
}
