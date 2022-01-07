
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_PMALLOC (int) ;
 int memcpy (void**,void**,int) ;
 void** zzmalloc (int) ;

void **IP_dup (void **x, int l) {
  void **r = zzmalloc (sizeof (void *) * l);
  ADD_PMALLOC (sizeof (void *) * l);
  memcpy (r, x, sizeof (void *) * l);
  return r;
}
