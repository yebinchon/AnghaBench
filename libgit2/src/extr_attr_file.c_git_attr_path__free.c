
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * basename; int * path; int full; } ;
typedef TYPE_1__ git_attr_path ;


 int git_buf_dispose (int *) ;

void git_attr_path__free(git_attr_path *info)
{
 git_buf_dispose(&info->full);
 info->path = ((void*)0);
 info->basename = ((void*)0);
}
