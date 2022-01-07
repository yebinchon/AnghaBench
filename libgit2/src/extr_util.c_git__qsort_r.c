
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* git__sort_r_cmp ;
struct TYPE_7__ {void* member_1; struct TYPE_7__* member_0; } ;
typedef TYPE_1__ git__qsort_r_glue ;


 void* git__qsort_r_glue_cmp ;
 int insertsort (void*,size_t,size_t,TYPE_1__*,void*) ;
 int qsort_r (void*,size_t,size_t,TYPE_1__*,void*) ;
 int qsort_s (void*,size_t,size_t,void*,TYPE_1__*) ;

void git__qsort_r(
 void *els, size_t nel, size_t elsize, git__sort_r_cmp cmp, void *payload)
{
 insertsort(els, nel, elsize, cmp, payload);

}
