
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hashsig_t ;
struct TYPE_3__ {int size; scalar_t__ (* cmp ) (int *,int *,int *) ;int * values; } ;
typedef TYPE_1__ hashsig_heap ;


 int HEAP_LCHILD_OF (int) ;
 int HEAP_RCHILD_OF (int) ;
 scalar_t__ stub1 (int *,int *,int *) ;
 scalar_t__ stub2 (int *,int *,int *) ;
 scalar_t__ stub3 (int *,int *,int *) ;

__attribute__((used)) static void hashsig_heap_down(hashsig_heap *h, int el)
{
 hashsig_t v, lv, rv;



 while (el < h->size / 2) {
  int lel = HEAP_LCHILD_OF(el), rel = HEAP_RCHILD_OF(el), swapel;

  v = h->values[el];
  lv = h->values[lel];
  rv = h->values[rel];

  if (h->cmp(&v, &lv, ((void*)0)) < 0 && h->cmp(&v, &rv, ((void*)0)) < 0)
   break;

  swapel = (h->cmp(&lv, &rv, ((void*)0)) < 0) ? lel : rel;

  h->values[el] = h->values[swapel];
  h->values[swapel] = v;

  el = swapel;
 }
}
