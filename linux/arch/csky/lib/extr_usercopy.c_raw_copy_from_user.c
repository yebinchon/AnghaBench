
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __copy_user_zeroing (void*,void const*,unsigned long) ;
 scalar_t__ access_ok (void const*,unsigned long) ;
 int memset (void*,int ,unsigned long) ;

unsigned long raw_copy_from_user(void *to, const void *from,
   unsigned long n)
{
 if (access_ok(from, n))
  __copy_user_zeroing(to, from, n);
 else
  memset(to, 0, n);
 return n;
}
