
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword_t ;


 int CLONE_VFORK_ ;
 int CLONE_VM_ ;
 int SIGCHLD_ ;
 int sys_clone (int,int ,int ,int ,int ) ;

dword_t sys_vfork() {
    return sys_clone(CLONE_VFORK_ | CLONE_VM_ | SIGCHLD_, 0, 0, 0, 0);
}
