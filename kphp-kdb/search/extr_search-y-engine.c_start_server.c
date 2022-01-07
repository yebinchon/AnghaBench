
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int active_connections ;
 int ct_rpc_server ;
 int epoll_work (int) ;
 int kprintf (char*,int ,int ,int ,int ,int ) ;
 int maxconn ;
 int process_signals () ;
 int rpc_methods ;
 int searchy_engine ;
 int searchy_functions ;
 int searchy_parse_function ;
 int searchy_stats ;
 int server_exit (int *) ;
 int server_init (int *,int *,int *,int *) ;
 double tl_aio_timeout ;
 int tl_parse_function ;
 int tl_restart_all_ready () ;
 int tl_stat_function ;
 int verbosity ;

void start_server (void) {
  int i;

  tl_parse_function = searchy_parse_function;
  tl_stat_function = searchy_stats;
  tl_aio_timeout = 2.0;

  server_init (&searchy_engine, &searchy_functions, &ct_rpc_server, &rpc_methods);

  int quit_steps = 0;

  for (i = 0; ; i++) {
    if (verbosity > 1 && !(i & 255)) {
      kprintf ("epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
        active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }

    epoll_work (57);
    if (!process_signals ()) {
      break;
    }
    tl_restart_all_ready ();
    if (quit_steps && !--quit_steps) break;
  }

  server_exit (&searchy_engine);
}
