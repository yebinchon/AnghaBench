
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reopen_logs () ;
 int sync_binlog (int) ;

__attribute__((used)) static void default_sigusr1 (void) {
  sync_binlog (2);
  reopen_logs ();
}
