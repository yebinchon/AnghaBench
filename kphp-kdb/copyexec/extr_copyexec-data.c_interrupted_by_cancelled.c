
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_id ;
 scalar_t__ getpid () ;
 scalar_t__ sigusr2_pid ;

__attribute__((used)) static inline int interrupted_by_cancelled (void) {
  return !cmd_id && sigusr2_pid && sigusr2_pid == getpid ();
}
