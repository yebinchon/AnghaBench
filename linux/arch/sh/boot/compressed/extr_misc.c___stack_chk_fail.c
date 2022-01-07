
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

void __stack_chk_fail(void)
{
 error("stack-protector: Kernel stack is corrupted\n");
}
