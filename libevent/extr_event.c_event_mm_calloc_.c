
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 size_t EV_SIZE_MAX ;
 void* calloc (size_t,size_t) ;
 int errno ;
 void* memset (void*,int ,size_t) ;
 void* mm_malloc_fn_ (size_t) ;

void *
event_mm_calloc_(size_t count, size_t size)
{
 if (count == 0 || size == 0)
  return ((void*)0);

 if (mm_malloc_fn_) {
  size_t sz = count * size;
  void *p = ((void*)0);
  if (count > EV_SIZE_MAX / size)
   goto error;
  p = mm_malloc_fn_(sz);
  if (p)
   return memset(p, 0, sz);
 } else {
  void *p = calloc(count, size);





  return p;
 }

error:
 errno = ENOMEM;
 return ((void*)0);
}
