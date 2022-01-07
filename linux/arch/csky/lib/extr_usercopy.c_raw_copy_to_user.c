
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __copy_user (void*,void const*,unsigned long) ;
 scalar_t__ access_ok (void*,unsigned long) ;

unsigned long raw_copy_to_user(void *to, const void *from,
   unsigned long n)
{
 if (access_ok(to, n))
  __copy_user(to, from, n);
 return n;
}
