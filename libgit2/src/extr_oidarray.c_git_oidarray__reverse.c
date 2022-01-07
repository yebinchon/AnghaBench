
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int * ids; } ;
typedef TYPE_1__ git_oidarray ;
typedef int git_oid ;


 int git_oid_cpy (int *,int *) ;

void git_oidarray__reverse(git_oidarray *arr)
{
 size_t i;
 git_oid tmp;

 for (i = 0; i < arr->count / 2; i++) {
  git_oid_cpy(&tmp, &arr->ids[i]);
  git_oid_cpy(&arr->ids[i], &arr->ids[(arr->count-1)-i]);
  git_oid_cpy(&arr->ids[(arr->count-1)-i], &tmp);
 }
}
