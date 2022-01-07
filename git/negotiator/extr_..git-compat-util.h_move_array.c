
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (void*,void const*,int ) ;
 int st_mult (size_t,size_t) ;

__attribute__((used)) static inline void move_array(void *dst, const void *src, size_t n, size_t size)
{
 if (n)
  memmove(dst, src, st_mult(size, n));
}
