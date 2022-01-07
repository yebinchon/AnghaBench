
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword_t ;


 int sys_setpgid (int ,int ) ;

dword_t sys_setpgrp() {
    return sys_setpgid(0, 0);
}
