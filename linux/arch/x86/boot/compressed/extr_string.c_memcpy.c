
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ____memcpy (void*,void const*,size_t) ;
 void* memmove (void*,void const*,size_t) ;
 int warn (char*) ;

void *memcpy(void *dest, const void *src, size_t n)
{
 if (dest > src && dest - src < n) {
  warn("Avoiding potentially unsafe overlapping memcpy()!");
  return memmove(dest, src, n);
 }
 return ____memcpy(dest, src, n);
}
