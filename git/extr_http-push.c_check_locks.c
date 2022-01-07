
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct remote_lock {int start_time; int timeout; char* url; struct remote_lock* next; int refreshing; } ;
struct TYPE_2__ {struct remote_lock* locks; } ;


 int LOCK_REFRESH ;
 int aborted ;
 int fprintf (int ,char*,char*) ;
 int refresh_lock (struct remote_lock*) ;
 TYPE_1__* repo ;
 int stderr ;
 int time (int *) ;

__attribute__((used)) static void check_locks(void)
{
 struct remote_lock *lock = repo->locks;
 time_t current_time = time(((void*)0));
 int time_remaining;

 while (lock) {
  time_remaining = lock->start_time + lock->timeout -
   current_time;
  if (!lock->refreshing && time_remaining < LOCK_REFRESH) {
   if (!refresh_lock(lock)) {
    fprintf(stderr,
     "Unable to refresh lock for %s\n",
     lock->url);
    aborted = 1;
    return;
   }
  }
  lock = lock->next;
 }
}
