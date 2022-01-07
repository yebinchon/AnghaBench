
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;

__attribute__((used)) static void __attribute__((__noreturn__)) ErrJump(void)
{
 Com_Error(ERR_DROP, "program tried to execute code outside VM");
}
