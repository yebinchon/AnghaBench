
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int locks; int pid; int owner; int type; int end; int start; } ;


 int list_init (int *) ;
 struct file_lock* malloc (int) ;

__attribute__((used)) static struct file_lock *file_lock_copy(struct file_lock *request) {
    struct file_lock *lock = malloc(sizeof(struct file_lock));
    lock->start = request->start;
    lock->end = request->end;
    lock->type = request->type;
    lock->owner = request->owner;
    lock->pid = request->pid;
    list_init(&lock->locks);
    return lock;
}
