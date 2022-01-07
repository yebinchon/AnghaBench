
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __kernel_size_t ;


 int memset (void*,int ,int ) ;

__kernel_size_t __clear_user(void *to, __kernel_size_t n)
{
 memset(to, 0, n);
 return 0;
}
