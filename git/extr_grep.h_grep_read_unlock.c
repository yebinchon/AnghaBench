
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grep_read_mutex ;
 scalar_t__ grep_use_locks ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline void grep_read_unlock(void)
{
 if (grep_use_locks)
  pthread_mutex_unlock(&grep_read_mutex);
}
