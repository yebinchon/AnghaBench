
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Xsig ;



__attribute__((used)) static inline void negate_Xsig(Xsig *x)
{
 asm volatile ("movl %1,%%esi;\n"
        "xorl %%ecx,%%ecx;\n"
        "movl %%ecx,%%eax; subl (%%esi),%%eax; movl %%eax,(%%esi);\n"
        "movl %%ecx,%%eax; sbbl 4(%%esi),%%eax; movl %%eax,4(%%esi);\n"
        "movl %%ecx,%%eax; sbbl 8(%%esi),%%eax; movl %%eax,8(%%esi);\n":"=g"
        (*x):"g"(x):"si", "ax", "cx");
}
