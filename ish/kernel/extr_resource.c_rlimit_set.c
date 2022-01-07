
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgroup {int lock; struct rlimit_* limits; } ;
struct task {struct tgroup* group; } ;
struct rlimit_ {int dummy; } ;


 int _EINVAL ;
 int lock (int *) ;
 int resource_valid (int) ;
 int unlock (int *) ;

__attribute__((used)) static int rlimit_set(struct task *task, int resource, struct rlimit_ limit) {
    if (!resource_valid(resource))
        return _EINVAL;
    struct tgroup *group = task->group;
    lock(&group->lock);
    group->limits[resource] = limit;
    unlock(&group->lock);
    return 0;
}
