
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hashsig_t ;
struct TYPE_3__ {scalar_t__ (* cmp ) (int *,int *,int *) ;int * values; } ;
typedef TYPE_1__ hashsig_heap ;


 int HEAP_PARENT_OF (int) ;
 scalar_t__ stub1 (int *,int *,int *) ;

__attribute__((used)) static void hashsig_heap_up(hashsig_heap *h, int el)
{
 int parent_el = HEAP_PARENT_OF(el);

 while (el > 0 && h->cmp(&h->values[parent_el], &h->values[el], ((void*)0)) > 0) {
  hashsig_t t = h->values[el];
  h->values[el] = h->values[parent_el];
  h->values[parent_el] = t;

  el = parent_el;
  parent_el = HEAP_PARENT_OF(el);
 }
}
