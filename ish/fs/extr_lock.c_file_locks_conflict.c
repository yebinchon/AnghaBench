
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ owner; scalar_t__ type; } ;


 scalar_t__ F_WRLCK_ ;
 int file_locks_overlap (struct file_lock*,struct file_lock*) ;

__attribute__((used)) static bool file_locks_conflict(struct file_lock *a, struct file_lock *b) {
    if (a->owner == b->owner)
        return 0;
    if (!file_locks_overlap(a, b))
        return 0;

    if (a->type == F_WRLCK_ || b->type == F_WRLCK_)
        return 1;
    return 0;
}
