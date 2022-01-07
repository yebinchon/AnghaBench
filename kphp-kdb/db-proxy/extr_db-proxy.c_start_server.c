
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
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_IGN ;
 int active_connections ;
 scalar_t__ change_user (char*) ;
 int close (int ) ;
 int create_all_outbound_connections () ;
 int cron () ;
 int ct_memcache_server ;
 int ct_mysql_server ;
 scalar_t__ daemonize ;
 int db_proxy_inbound ;
 int db_proxy_memcache_inbound ;
 int do_reload_config (int) ;
 double drand48 () ;
 int epoll_close (int ) ;
 int epoll_work (int) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int init_epoll () ;
 int init_listening_connection (int ,int *,int *) ;
 int init_netbuffers () ;
 int maxconn ;
 scalar_t__ memcache_port ;
 int memcache_sfd ;
 scalar_t__ need_reload_config ;
 int now ;
 double precise_now ;
 scalar_t__ quit_steps ;
 int setsid () ;
 int sfd ;
 int sighup_handler ;
 int sigint_handler ;
 int signal (int ,int ) ;
 int sigterm_handler ;
 int sigusr1_handler ;
 int sigusr2_handler ;
 int stderr ;
 int test_mode ;
 char* username ;
 scalar_t__ verbosity ;

void start_server (void) {

  int i;
  int prev_time;
  double next_create_outbound = 0;

  init_epoll();
  init_netbuffers();

  prev_time = 0;

  if (daemonize) {
    setsid();
  }

  if (change_user (username) < 0 && !test_mode) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit(1);
  }

  init_listening_connection (sfd, &ct_mysql_server, &db_proxy_inbound);

  if (memcache_port) {
    init_listening_connection (memcache_sfd, &ct_memcache_server, &db_proxy_memcache_inbound);
  }

  create_all_outbound_connections ();

  signal(SIGINT, sigint_handler);
  signal(SIGTERM, sigterm_handler);
  signal(SIGUSR1, sigusr1_handler);
  signal(SIGUSR2, sigusr2_handler);
  signal(SIGPIPE, SIG_IGN);
  if (daemonize) {
    signal(SIGHUP, sighup_handler);
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      fprintf (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
        active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    epoll_work (50);
    if (precise_now > next_create_outbound) {
      create_all_outbound_connections ();
      next_create_outbound = precise_now + 0.03 + 0.02 * drand48();
    }
    if (now != prev_time) {
      prev_time = now;
      cron();
    }
    if (need_reload_config) {
      do_reload_config (1);
    }
    if (quit_steps && !--quit_steps) break;
  }

  epoll_close (sfd);
  close(sfd);


}
