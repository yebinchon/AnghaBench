
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_lock {struct ref_lock* ref_name; int lk; } ;


 int free (struct ref_lock*) ;
 int rollback_lock_file (int *) ;

__attribute__((used)) static void unlock_ref(struct ref_lock *lock)
{
 rollback_lock_file(&lock->lk);
 free(lock->ref_name);
 free(lock);
}
