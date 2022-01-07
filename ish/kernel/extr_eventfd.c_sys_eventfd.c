
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int int_t ;


 int sys_eventfd2 (int ,int ) ;

int_t sys_eventfd(uint_t initval) {
    return sys_eventfd2(initval, 0);
}
