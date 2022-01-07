
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int active_connections ;
 int close (int ) ;
 int cron () ;
 int ct_filesys_engine_server ;
 int epoll_close (int ) ;
 int epoll_pre_event () ;
 int epoll_work (int) ;
 int ff_sfd ;
 int ff_stop_server ;
 int fprintf (int ,char*,int,int,int,int,int) ;
 int init_epoll () ;
 int init_listening_connection (int ,int *,int *) ;
 int init_netbuffers () ;
 int maxconn ;
 int memcache_methods ;
 int now ;
 int pthread_exit (int *) ;
 int stderr ;
 scalar_t__ verbosity ;

__attribute__((used)) static void *start_server (void *arg) {
  int i, prev_time = 0;

  init_epoll ();
  init_netbuffers ();
  init_listening_connection (ff_sfd, &ct_filesys_engine_server, &memcache_methods);

  for (i = 0; !ff_stop_server ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      fprintf (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
        active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    epoll_work (67);

    if (now != prev_time) {
      prev_time = now;
      cron ();
    }

    if (epoll_pre_event) {
      epoll_pre_event();
    }
  }

  epoll_close (ff_sfd);
  close (ff_sfd);
  pthread_exit (((void*)0));
}
