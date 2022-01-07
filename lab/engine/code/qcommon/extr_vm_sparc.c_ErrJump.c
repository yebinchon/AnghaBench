
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int exit (int) ;

__attribute__((used)) static void ErrJump(void)
{
 Com_Error(ERR_DROP, "program tried to execute code outside VM");
 exit(1);
}
