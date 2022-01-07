
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock_ {scalar_t__ start; scalar_t__ len; int pid; int whence; int type; } ;
struct file_lock {scalar_t__ start; scalar_t__ end; int pid; int type; } ;


 int LSEEK_SET ;
 scalar_t__ OFF_T_MAX ;

__attribute__((used)) static int flock_from_file_lock(struct file_lock *lock, struct flock_ *flock) {
    flock->type = lock->type;
    flock->whence = LSEEK_SET;
    flock->start = lock->start;
    if (lock->end != OFF_T_MAX)
        flock->len = lock->end - lock->start + 1;
    else
        flock->len = 0;
    flock->pid = lock->pid;
    return 0;
}
