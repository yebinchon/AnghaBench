
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprotval_t ;



__attribute__((used)) static pgprotval_t protect_kernel_text_ro(unsigned long start,
       unsigned long end)
{
 return 0;
}
