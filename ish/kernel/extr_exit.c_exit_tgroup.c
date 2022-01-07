
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgroup {int pgroup; scalar_t__ timer; int threads; } ;
struct task {int group_links; struct tgroup* group; } ;


 int list_empty (int *) ;
 int list_remove (int *) ;
 int task_leave_session (struct task*) ;
 int timer_free (scalar_t__) ;

__attribute__((used)) static bool exit_tgroup(struct task *task) {
    struct tgroup *group = task->group;
    list_remove(&task->group_links);
    bool group_dead = list_empty(&group->threads);
    if (group_dead) {



        if (group->timer)
            timer_free(group->timer);
        task_leave_session(task);
        list_remove(&group->pgroup);
    }
    return group_dead;
}
