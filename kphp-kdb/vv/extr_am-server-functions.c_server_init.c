
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sigaction {int sa_mask; int sa_handler; } ;
struct TYPE_6__ {scalar_t__ cron; scalar_t__ save_index; scalar_t__ sigusr1; scalar_t__ sighup; } ;
typedef TYPE_1__ server_functions_t ;
typedef int sa ;
struct TYPE_7__ {scalar_t__ sfd; int settings_addr; } ;
typedef TYPE_2__ engine_t ;
typedef int conn_type_t ;
struct TYPE_8__ {scalar_t__ cron; scalar_t__ save_index; scalar_t__ sigusr1; scalar_t__ sighup; } ;


 int Binlog ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGPOLL ;
 int SIGTERM ;
 int SIG_IGN ;
 int add_udp_socket (char*,int ) ;
 scalar_t__ append_to_binlog (int ) ;
 int assert (int) ;
 int backlog ;
 scalar_t__ binlog_disabled ;
 scalar_t__ binlog_fd ;
 scalar_t__ binlogname ;
 scalar_t__ change_user (char*) ;
 scalar_t__ daemonize ;
 int epoll_pre_event ;
 int exit (int) ;
 int init_epoll () ;
 int init_listening_connection (scalar_t__,int *,void*) ;
 int init_msg_buffers (int ) ;
 int init_netbuffers () ;
 int kprintf (char*,char*) ;
 scalar_t__ log_readto_pos ;
 int memset (struct sigaction*,int ,int) ;
 char* port ;
 int read_new_events ;
 int reopen_logs () ;
 scalar_t__ server_socket (char*,int ,int ,int ) ;
 int setsid () ;
 TYPE_3__ sf ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sighup_handler ;
 int sigint_handler ;
 int sigterm_handler ;
 scalar_t__ udp_enabled ;
 char* username ;

void server_init (engine_t *E, server_functions_t *F, conn_type_t *listen_connection_type, void *listen_connection_extra) {
  if (F != ((void*)0)) {
    if (F->sighup) {
      sf.sighup = F->sighup;
    }
    if (F->sigusr1) {
      sf.sigusr1 = F->sigusr1;
    }
    if (F->save_index) {
      sf.save_index = F->save_index;
    }
    if (F->cron) {
      sf.cron = F->cron;
    }
  }

  init_epoll ();
  init_netbuffers ();
  if (udp_enabled) {
    init_msg_buffers (0);
  }

  if (daemonize) {
    setsid ();
    reopen_logs ();
  }

  if (!E->sfd) {
    E->sfd = server_socket (port, E->settings_addr, backlog, 0);
  }

  if (E->sfd < 0) {
    kprintf ("cannot open server socket at port %d: %m\n", port);
    exit (1);
  }

  if (change_user (username) < 0) {
    kprintf ("fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  if (binlogname && !binlog_disabled) {
    assert (append_to_binlog (Binlog) == log_readto_pos);
  }

  init_listening_connection (E->sfd, listen_connection_type, listen_connection_extra);
  if (udp_enabled) {
    add_udp_socket (port, 0);
  }

  if (binlog_disabled && binlog_fd >= 0) {
    epoll_pre_event = read_new_events;
  }

  struct sigaction sa;
  memset (&sa, 0, sizeof (sa));
  sa.sa_handler = sigint_handler;
  sigemptyset (&sa.sa_mask);
  sigaddset (&sa.sa_mask, SIGTERM);
  sigaction (SIGINT, &sa, ((void*)0));

  sa.sa_handler = sigterm_handler;
  sigemptyset (&sa.sa_mask);
  sigaddset (&sa.sa_mask, SIGINT);
  sigaction (SIGTERM, &sa, ((void*)0));

  sa.sa_handler = SIG_IGN;
  sigaction (SIGPIPE, &sa, ((void*)0));
  sigaction (SIGPOLL, &sa, ((void*)0));

  if (daemonize) {
    sa.sa_handler = sighup_handler;
    sigemptyset (&sa.sa_mask);
    sigaction (SIGHUP, &sa, ((void*)0));
  }
}
