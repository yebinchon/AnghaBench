
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int ,int) ;
 void* tl_zzmalloc (int) ;

void *tl_zzmalloc0 (int size) {
  void *r = tl_zzmalloc (size);
  memset (r, 0, size);
  return r;
}
