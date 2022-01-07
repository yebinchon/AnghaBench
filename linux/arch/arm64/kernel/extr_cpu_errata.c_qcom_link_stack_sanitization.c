
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static void qcom_link_stack_sanitization(void)
{
 u64 tmp;

 asm volatile("mov	%0, x30		\n"
       ".rept	16		\n"
       "bl	. + 4		\n"
       ".endr			\n"
       "mov	x30, %0		\n"
       : "=&r" (tmp));
}
