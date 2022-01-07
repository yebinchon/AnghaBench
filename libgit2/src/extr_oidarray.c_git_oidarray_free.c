
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ids; } ;
typedef TYPE_1__ git_oidarray ;


 int git__free (int ) ;

void git_oidarray_free(git_oidarray *arr)
{
 git__free(arr->ids);
}
