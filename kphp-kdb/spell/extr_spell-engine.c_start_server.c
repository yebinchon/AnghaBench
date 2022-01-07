
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int SIGHUP ;
 int SIGINT ;
 int SIGIO ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIG_IGN ;
 int active_connections ;
 scalar_t__ change_user (char*) ;
 int close (int ) ;
 int cron () ;
 int ct_spell_engine_server ;
 scalar_t__ daemonize ;
 int epoll_close (int ) ;
 int epoll_work (int) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int init_epoll () ;
 int init_listening_connection (int ,int *,int *) ;
 int init_netbuffers () ;
 int maxconn ;
 int memcache_methods ;
 int now ;
 int setsid () ;
 int sfd ;
 int sighup_handler ;
 int sigint_handler ;
 int signal (int ,int ) ;
 int sigterm_handler ;
 int sigusr1_handler ;
 int stderr ;
 char* username ;
 int vkprintf (int,char*,int ,int ,int ,int ,int ) ;

void start_server (void) {
  int i;
  int prev_time;

  init_epoll ();
  init_netbuffers ();

  prev_time = 0;

  if (daemonize) {
    setsid();
  }

  if (change_user(username) < 0) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  init_listening_connection (sfd, &ct_spell_engine_server, &memcache_methods);

  signal (SIGINT, sigint_handler);
  signal (SIGTERM, sigterm_handler);
  signal (SIGUSR1, sigusr1_handler);
  signal (SIGPIPE, SIG_IGN);
  signal (SIGIO, SIG_IGN);
  if (daemonize) {
    signal (SIGHUP, sighup_handler);
  }

  int quit_steps = 0;

  for (i = 0; ; i++) {
    if (!(i & 255)) {
      vkprintf (1, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
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
  close (sfd);

}
