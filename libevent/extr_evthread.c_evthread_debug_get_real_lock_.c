
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_lock {void* lock; } ;



void *
evthread_debug_get_real_lock_(void *lock_)
{
 struct debug_lock *lock = lock_;
 return lock->lock;
}
