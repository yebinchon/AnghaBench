
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int locks; } ;


 int free (struct file_lock*) ;
 int list_remove (int *) ;

__attribute__((used)) static void file_lock_delete(struct file_lock *lock) {
    list_remove(&lock->locks);
    free(lock);
}
