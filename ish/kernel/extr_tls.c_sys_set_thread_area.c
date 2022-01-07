
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addr_t ;


 int STRACE (char*,int ) ;
 int current ;
 int task_set_thread_area (int ,int ) ;

int sys_set_thread_area(addr_t u_info) {
    STRACE("set_thread_area(0x%x)", u_info);
    return task_set_thread_area(current, u_info);
}
