
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __kernel_size_t ;


 int memcpy (void*,void const*,int ) ;

__kernel_size_t __copy_user(void *to, const void *from, __kernel_size_t n)
{
 memcpy(to, from, n);
 return 0;
}
