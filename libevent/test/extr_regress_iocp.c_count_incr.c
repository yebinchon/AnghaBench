
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVLOCK_LOCK (int ,int ) ;
 int EVLOCK_UNLOCK (int ,int ) ;
 int EVTHREAD_COND_BROADCAST (int ) ;
 int count ;
 int count_cond ;
 int count_lock ;

__attribute__((used)) static void
count_incr(void)
{
 EVLOCK_LOCK(count_lock, 0);
 count++;
 EVTHREAD_COND_BROADCAST(count_cond);
 EVLOCK_UNLOCK(count_lock, 0);
}
