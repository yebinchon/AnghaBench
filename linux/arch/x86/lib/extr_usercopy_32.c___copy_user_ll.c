
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __copy_user (void*,void const*,unsigned long) ;
 unsigned long __copy_user_intel (void*,void const*,unsigned long) ;
 int __uaccess_begin_nospec () ;
 int __uaccess_end () ;
 scalar_t__ movsl_is_ok (void*,void const*,unsigned long) ;

unsigned long __copy_user_ll(void *to, const void *from, unsigned long n)
{
 __uaccess_begin_nospec();
 if (movsl_is_ok(to, from, n))
  __copy_user(to, from, n);
 else
  n = __copy_user_intel(to, from, n);
 __uaccess_end();
 return n;
}
