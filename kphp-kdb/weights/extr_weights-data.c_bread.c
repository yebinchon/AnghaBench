
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int memcpy (void*,void*,size_t) ;
 int readadv (size_t) ;
 void* readin (size_t) ;

void bread (void *b, size_t len) {
  void *p = readin (len);
  assert (p != ((void*)0));
  memcpy (b, p, len);
  readadv (len);
}
