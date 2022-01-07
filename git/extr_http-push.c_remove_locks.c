
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct remote_lock {struct remote_lock* next; } ;
struct TYPE_2__ {struct remote_lock* locks; } ;


 int fprintf (int ,char*) ;
 TYPE_1__* repo ;
 int stderr ;
 int unlock_remote (struct remote_lock*) ;

__attribute__((used)) static void remove_locks(void)
{
 struct remote_lock *lock = repo->locks;

 fprintf(stderr, "Removing remote locks...\n");
 while (lock) {
  struct remote_lock *next = lock->next;
  unlock_remote(lock);
  lock = next;
 }
}
