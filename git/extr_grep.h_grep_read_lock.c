
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grep_read_mutex ;
 scalar_t__ grep_use_locks ;
 int pthread_mutex_lock (int *) ;

__attribute__((used)) static inline void grep_read_lock(void)
{
 if (grep_use_locks)
  pthread_mutex_lock(&grep_read_mutex);
}
