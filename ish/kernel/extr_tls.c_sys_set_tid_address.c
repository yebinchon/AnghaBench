
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int addr_t ;
struct TYPE_2__ {int clear_tid; } ;


 TYPE_1__* current ;
 int sys_getpid () ;

int sys_set_tid_address(addr_t tid) {
    current->clear_tid = tid;
    return sys_getpid();
}
