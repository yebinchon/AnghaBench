
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ZMALLOC ;
 int assert (void*) ;
 void* malloc (int) ;
 void* zmalloc (int) ;

void *tl_zzmalloc (int size) {
  if (size <= MAX_ZMALLOC) {
    return zmalloc (size);
  } else {
    void *p = malloc (size);
    assert (p);
    return p;
  }
}
