
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hashsig_t ;
struct TYPE_3__ {int cmp; int size; int values; } ;
typedef TYPE_1__ hashsig_heap ;


 int git__qsort_r (int ,int ,int,int ,int *) ;

__attribute__((used)) static void hashsig_heap_sort(hashsig_heap *h)
{

 git__qsort_r(h->values, h->size, sizeof(hashsig_t), h->cmp, ((void*)0));
}
