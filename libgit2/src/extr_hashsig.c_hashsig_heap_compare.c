
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* cmp ) (int *,int *,int *) ;int size; int * values; } ;
typedef TYPE_1__ hashsig_heap ;


 int HASHSIG_SCALE ;
 int assert (int) ;
 int stub1 (int *,int *,int *) ;

__attribute__((used)) static int hashsig_heap_compare(const hashsig_heap *a, const hashsig_heap *b)
{
 int matches = 0, i, j, cmp;

 assert(a->cmp == b->cmp);



 for (i = 0, j = 0; i < a->size && j < b->size; ) {
  cmp = a->cmp(&a->values[i], &b->values[j], ((void*)0));

  if (cmp < 0)
   ++i;
  else if (cmp > 0)
   ++j;
  else {
   ++i; ++j; ++matches;
  }
 }

 return HASHSIG_SCALE * (matches * 2) / (a->size + b->size);
}
