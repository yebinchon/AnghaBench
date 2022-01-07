
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsort_store {void** storage; scalar_t__ (* cmp ) (void*,void*,int ) ;int payload; } ;
struct tsort_run {int length; int start; } ;
typedef int ssize_t ;


 int MIN (int const,int const) ;
 int memcpy (void**,void**,int const) ;
 scalar_t__ resize (struct tsort_store*,int ) ;
 scalar_t__ stub1 (void*,void*,int ) ;
 scalar_t__ stub2 (void*,void*,int ) ;

__attribute__((used)) static void merge(void **dst, const struct tsort_run *stack, ssize_t stack_curr, struct tsort_store *store)
{
 const ssize_t A = stack[stack_curr - 2].length;
 const ssize_t B = stack[stack_curr - 1].length;
 const ssize_t curr = stack[stack_curr - 2].start;

 void **storage;
 ssize_t i, j, k;

 if (resize(store, MIN(A, B)) < 0)
  return;

 storage = store->storage;


 if (A < B) {
  memcpy(storage, &dst[curr], A * sizeof(void *));
  i = 0;
  j = curr + A;

  for (k = curr; k < curr + A + B; k++) {
   if ((i < A) && (j < curr + A + B)) {
    if (store->cmp(storage[i], dst[j], store->payload) <= 0)
     dst[k] = storage[i++];
    else
     dst[k] = dst[j++];
   } else if (i < A) {
    dst[k] = storage[i++];
   } else
    dst[k] = dst[j++];
  }
 } else {
  memcpy(storage, &dst[curr + A], B * sizeof(void *));
  i = B - 1;
  j = curr + A - 1;

  for (k = curr + A + B - 1; k >= curr; k--) {
   if ((i >= 0) && (j >= curr)) {
    if (store->cmp(dst[j], storage[i], store->payload) > 0)
     dst[k] = dst[j--];
    else
     dst[k] = storage[i--];
   } else if (i >= 0)
    dst[k] = storage[i--];
   else
    dst[k] = dst[j--];
  }
 }
}
