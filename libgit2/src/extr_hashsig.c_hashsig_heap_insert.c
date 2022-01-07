
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int hashsig_t ;
struct TYPE_5__ {int size; int asize; scalar_t__ (* cmp ) (int *,int *,int *) ;int * values; } ;
typedef TYPE_1__ hashsig_heap ;


 int hashsig_heap_down (TYPE_1__*,int ) ;
 int hashsig_heap_up (TYPE_1__*,int) ;
 scalar_t__ stub1 (int *,int *,int *) ;

__attribute__((used)) static void hashsig_heap_insert(hashsig_heap *h, hashsig_t val)
{

 if (h->size < h->asize) {
  h->values[h->size++] = val;
  hashsig_heap_up(h, h->size - 1);
 }


 else if (h->cmp(&val, &h->values[0], ((void*)0)) > 0) {
  h->size--;
  h->values[0] = h->values[h->size];
  hashsig_heap_down(h, 0);
 }

}
