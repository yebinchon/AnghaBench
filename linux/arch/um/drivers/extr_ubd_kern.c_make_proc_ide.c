
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* proc_ide ;
 int * proc_ide_root ;
 void* proc_mkdir (char*,int *) ;

__attribute__((used)) static void make_proc_ide(void)
{
 proc_ide_root = proc_mkdir("ide", ((void*)0));
 proc_ide = proc_mkdir("ide0", proc_ide_root);
}
