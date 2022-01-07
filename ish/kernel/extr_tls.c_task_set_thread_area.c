
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_desc {unsigned int entry_number; int base_addr; } ;
struct TYPE_2__ {int tls_ptr; } ;
struct task {TYPE_1__ cpu; } ;
typedef int addr_t ;


 int _EFAULT ;
 scalar_t__ user_get_task (struct task*,int ,struct user_desc) ;
 scalar_t__ user_put (int ,struct user_desc) ;

int task_set_thread_area(struct task *task, addr_t u_info) {
    struct user_desc info;
    if (user_get_task(task, u_info, info))
        return _EFAULT;




    task->cpu.tls_ptr = info.base_addr;

    if (info.entry_number == (unsigned) -1) {
        info.entry_number = 0xc;
    }

    if (user_put(u_info, info))
            return _EFAULT;
    return 0;
}
