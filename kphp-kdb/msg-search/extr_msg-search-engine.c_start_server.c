
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;


 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIG_IGN ;
 int accept_new_connections ;
 int active_connections ;
 int backlog ;
 scalar_t__ binlogname ;
 scalar_t__ change_user (char*) ;
 int close (scalar_t__) ;
 char* conv_addr (int ,char*) ;
 int cron () ;
 scalar_t__ daemonize ;
 int epoll_close (scalar_t__) ;
 int epoll_insert (scalar_t__,int) ;
 int epoll_sethandler (scalar_t__,int,int ,int ) ;
 int epoll_work (int) ;
 int exit (int) ;
 int * fd ;
 int flush_binlog_ts () ;
 int fprintf (int ,char*,...) ;
 int * fsize ;
 int init_epoll () ;
 int init_netbuffers () ;
 int interactive ;
 int maxconn ;
 int now ;
 int open_file (int,scalar_t__,int) ;
 int port ;
 scalar_t__ quit_steps ;
 int reopen_logs () ;
 scalar_t__ sdf ;
 scalar_t__ server_socket (int,TYPE_1__,int ,int ) ;
 int set_log_data (int ,int ) ;
 int setsid () ;
 TYPE_1__ settings_addr ;
 int sighup_handler ;
 int sigint_handler ;
 int signal (int ,int ) ;
 int sigterm_handler ;
 int sigusr1_handler ;
 int stderr ;
 char* username ;
 scalar_t__ verbosity ;

void start_server (void) {

  char buf[64];
  int i;
  int prev_time;

  init_epoll();
  init_netbuffers();

  prev_time = 0;

  if (!sdf) {
    sdf = server_socket (port, settings_addr, backlog, 0);
  }

  if (sdf < 0) {
    fprintf(stderr, "cannot open server socket at port %d: %m\n", port);
    exit(3);
  }

  if (verbosity) {
    fprintf (stderr, "created listening socket at %s:%d, fd=%d\n", conv_addr(settings_addr.s_addr, buf), port, sdf);
  }

  if (daemonize) {
    setsid();
  }

  if (change_user(username) < 0 && !interactive) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit(1);
  }

  if (binlogname) {
    open_file (2, binlogname, 1);
    set_log_data (fd[2], fsize[2]);
  }

  epoll_sethandler (sdf, -10, accept_new_connections, 0);
  epoll_insert (sdf, 7);

  signal(SIGINT, sigint_handler);
  signal(SIGTERM, sigterm_handler);
  signal(SIGUSR1, sigusr1_handler);
  signal(SIGPIPE, SIG_IGN);
  if (daemonize) {
    signal(SIGHUP, sighup_handler);
    reopen_logs();
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      fprintf (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
        active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    epoll_work (1000);
    if (now != prev_time) {
      prev_time = now;
      cron();
    }
    if (quit_steps && !--quit_steps) break;
  }

  epoll_close (sdf);
  close(sdf);

  flush_binlog_ts();
}
