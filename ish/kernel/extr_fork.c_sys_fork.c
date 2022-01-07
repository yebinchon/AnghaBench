
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword_t ;


 int SIGCHLD_ ;
 int sys_clone (int ,int ,int ,int ,int ) ;

dword_t sys_fork() {
    return sys_clone(SIGCHLD_, 0, 0, 0, 0);
}
