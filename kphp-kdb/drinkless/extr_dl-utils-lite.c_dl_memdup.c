
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 void* dl_malloc (size_t) ;
 int memcpy (void*,void const*,size_t) ;

void* dl_memdup (const void *src, size_t x) {
  void *res = dl_malloc (x);
  assert (res != ((void*)0));
  memcpy (res, src, x);
  return res;
}
