
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZALLOC ;
 int assert (void*) ;
 void* malloc (int) ;
 int memset (void*,int ,int) ;
 int tot_memory_allocated ;
 void* zmalloc0 (int) ;

void *zzmalloc0 (int l) {
  void *t;
  if (l < MAX_ZALLOC) {
    t = zmalloc0 (l);
  } else {
    t = malloc (l);
    assert (t);
    memset (t, 0, l);
  }
  if (t) {
    tot_memory_allocated += l;
  }
  return t;
}
