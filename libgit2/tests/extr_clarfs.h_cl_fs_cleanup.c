
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clar_sandbox () ;
 int clar_unsandbox () ;

void
cl_fs_cleanup(void)
{
 clar_unsandbox();
 clar_sandbox();
}
