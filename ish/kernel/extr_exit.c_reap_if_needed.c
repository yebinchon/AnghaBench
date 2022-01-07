
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
typedef int int_t ;
typedef int addr_t ;


 int WUNTRACED_ ;
 int assert (int ) ;
 scalar_t__ notify_if_stopped (struct task*,int ) ;
 scalar_t__ reap_if_zombie (struct task*,int ,int ) ;
 int task_is_leader (struct task*) ;

__attribute__((used)) static bool reap_if_needed(struct task *task, int_t options, addr_t status_addr, addr_t rusage_addr) {
    assert(task_is_leader(task));
    if (options & WUNTRACED_ && notify_if_stopped(task, status_addr))
        return 1;
    if (reap_if_zombie(task, status_addr, rusage_addr))
        return 1;
    return 0;
}
