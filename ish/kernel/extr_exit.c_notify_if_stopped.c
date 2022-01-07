
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task {TYPE_1__* group; } ;
typedef scalar_t__ dword_t ;
typedef scalar_t__ addr_t ;
struct TYPE_2__ {scalar_t__ group_exit_code; int stopped; } ;


 int _EFAULT ;
 scalar_t__ user_put (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool notify_if_stopped(struct task *task, addr_t status_addr) {

    if (!task->group->stopped || task->group->group_exit_code == 0)
        return 0;
    dword_t exit_code = task->group->group_exit_code;
    task->group->group_exit_code = 0;
    if (status_addr != 0)
        if (user_put(status_addr, exit_code))
            return _EFAULT;
    return 1;
}
