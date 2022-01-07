
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sfd; } ;
typedef TYPE_1__ engine_t ;


 int SIGINT ;
 int SIGTERM ;
 int close (int ) ;
 int epoll_close (int ) ;
 int flush_binlog_last () ;
 int kprintf (char*) ;
 int pending_signals ;
 int sync_binlog (int) ;

void server_exit (engine_t *E) {
  epoll_close (E->sfd);
  close (E->sfd);
  flush_binlog_last ();
  sync_binlog (2);
  if (pending_signals & (1 << SIGTERM)) {
    kprintf ("Terminated by SIGTERM.\n");
  } else if (pending_signals & (1 << SIGINT)) {
    kprintf ("Terminated by SIGINT.\n");
  }
}
