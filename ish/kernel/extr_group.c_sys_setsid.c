
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword_t ;


 int STRACE (char*) ;
 int current ;
 int task_setsid (int ) ;

dword_t sys_setsid() {
    STRACE("setsid()");
    return task_setsid(current);
}
