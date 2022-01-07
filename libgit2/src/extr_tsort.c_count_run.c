
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsort_store {scalar_t__ (* cmp ) (void*,void*,int ) ;int payload; } ;
typedef int ssize_t ;


 int reverse_elements (void**,int,int) ;
 scalar_t__ stub1 (void*,void*,int ) ;
 scalar_t__ stub2 (void*,void*,int ) ;
 scalar_t__ stub3 (void*,void*,int ) ;
 scalar_t__ stub4 (void*,void*,int ) ;

__attribute__((used)) static ssize_t count_run(
 void **dst, ssize_t start, ssize_t size, struct tsort_store *store)
{
 ssize_t curr = start + 2;

 if (size - start == 1)
  return 1;

 if (start >= size - 2) {
  if (store->cmp(dst[size - 2], dst[size - 1], store->payload) > 0) {
   void *tmp = dst[size - 1];
   dst[size - 1] = dst[size - 2];
   dst[size - 2] = tmp;
  }

  return 2;
 }

 if (store->cmp(dst[start], dst[start + 1], store->payload) <= 0) {
  while (curr < size - 1 &&
    store->cmp(dst[curr - 1], dst[curr], store->payload) <= 0)
   curr++;

  return curr - start;
 } else {
  while (curr < size - 1 &&
    store->cmp(dst[curr - 1], dst[curr], store->payload) > 0)
   curr++;


  reverse_elements(dst, start, curr - 1);
  return curr - start;
 }
}
