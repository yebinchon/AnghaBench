
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int pgroup; int session; int * task; } ;


 scalar_t__ list_empty (int *) ;

__attribute__((used)) static bool pid_empty(struct pid *pid) {
    return pid->task == ((void*)0) && list_empty(&pid->session) && list_empty(&pid->pgroup);
}
