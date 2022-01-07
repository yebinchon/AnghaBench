
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGRTMAX ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIG_IGN ;
 int active_connections ;
 int assert (int) ;
 scalar_t__ change_user (char*) ;
 scalar_t__ close (int ) ;
 int cron () ;
 int ct_rpc_server ;
 scalar_t__ daemonize ;
 int epoll_close (int ) ;
 int epoll_work (int) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int init_epoll () ;
 int init_listening_connection (int ,int *,int *) ;
 int init_netbuffers () ;
 int interactive ;
 int maxconn ;
 int memcache_rpc_server ;
 int now ;
 scalar_t__ quit_steps ;
 int setsid () ;
 int sfd ;
 int sighup_handler ;
 int sigint_handler ;
 int signal (int ,int ) ;
 int sigrtmax_handler ;
 int sigterm_handler ;
 int sigusr1_handler ;
 int stderr ;
 char* username ;
 scalar_t__ verbosity ;

void start_server (void) {
  int i;
  int prev_time;

  init_epoll();
  init_netbuffers();

  prev_time = 0;

  if (daemonize) {
    setsid();
  }

  if (change_user (username) < 0 && !interactive) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  init_listening_connection (sfd, &ct_rpc_server, &memcache_rpc_server);

  signal (SIGINT, sigint_handler);
  signal (SIGTERM, sigterm_handler);
  signal (SIGUSR1, sigusr1_handler);
  signal (SIGRTMAX, sigrtmax_handler);
  signal (SIGPIPE, SIG_IGN);
  if (daemonize) {
    signal (SIGHUP, sighup_handler);
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      fprintf (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
         active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    epoll_work (57);
    if (now != prev_time) {
      prev_time = now;
      cron();
    }
    if (quit_steps && !--quit_steps) break;
  }

  epoll_close (sfd);
  assert (close (sfd) >= 0);
}
