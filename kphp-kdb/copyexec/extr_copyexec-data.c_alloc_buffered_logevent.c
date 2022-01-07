
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffered_logevent {void* data; } ;
typedef int lev_type_t ;


 int assert (int) ;
 void* calloc (int,int) ;
 int memcpy (void*,int*,int) ;

void *alloc_buffered_logevent (struct buffered_logevent *L, lev_type_t type, int size) {
  size = (size + 3) & -4;
  assert (size >= 4);
  L->data = calloc (size + 8, 1);
  assert (L->data != ((void*)0));
  memcpy (L->data, &size, 4);
  memcpy (L->data + 8, &type, 4);
  return L->data + 8;
}
