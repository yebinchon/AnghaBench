
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int active_connections ;
 scalar_t__ binlog_disabled ;
 int check_all_aio_completions () ;
 int cstatus_binlog_pos (int ,scalar_t__) ;
 int ct_rpc_server ;
 int epoll_work (int) ;
 int fetch_binlog_data (int ) ;
 int flush_binlog () ;
 int fprintf (int ,char*,int,int,int,int,int) ;
 int log_cur_pos () ;
 int log_write_pos () ;
 int maxconn ;
 int news_engine ;
 int news_functions ;
 int news_parse_function ;
 int process_signals () ;
 int rpc_methods ;
 int server_exit (int *) ;
 int server_init (int *,int *,int *,int *) ;
 int stderr ;
 double tl_aio_timeout ;
 int tl_parse_function ;
 int tl_restart_all_ready () ;
 scalar_t__ verbosity ;

void start_server (void) {
  tl_parse_function = news_parse_function;
  tl_aio_timeout = 2.0;
  server_init (&news_engine, &news_functions, &ct_rpc_server, &rpc_methods);
  int quit_steps = 0, epoll_work_timeout = 17, i;
  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 1023)) {
      fprintf (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
        active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    fetch_binlog_data (binlog_disabled ? log_cur_pos() : log_write_pos ());
    epoll_work (epoll_work_timeout);

    if (!process_signals ()) {
      break;
    }

    check_all_aio_completions ();
    tl_restart_all_ready ();

    flush_binlog ();
    cstatus_binlog_pos (binlog_disabled ? log_cur_pos() : log_write_pos (), binlog_disabled);
    if (quit_steps && !--quit_steps) break;
  }

  server_exit (&news_engine);
}
