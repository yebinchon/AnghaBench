
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t_ ;


 int sys_getpgid (int ) ;

pid_t_ sys_getpgrp() {
    return sys_getpgid(0);
}
