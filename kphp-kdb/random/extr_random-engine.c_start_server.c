
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int PASSWORD_LENGTH ;
 int active_connections ;
 int ct_rpc_server ;
 int epoll_work (int) ;
 int maxconn ;
 int password_filename ;
 int process_signals () ;
 int random_engine ;
 int random_free (int ,int ) ;
 int random_functions ;
 int random_parse_function ;
 int random_stats ;
 int random_work (int) ;
 int rpc_methods ;
 int server_exit (int *) ;
 int server_init (int *,int *,int *,int *) ;
 double tl_aio_timeout ;
 int tl_parse_function ;
 int tl_stat_function ;
 int vkprintf (int,char*,int ,int ,int ,int ,int ) ;

void start_server (void) {
  int i;

  tl_parse_function = random_parse_function;
  tl_stat_function = random_stats;
  tl_aio_timeout = 2.0;

  server_init (&random_engine, &random_functions, &ct_rpc_server, &rpc_methods);

  int quit_steps = 0;

  for (i = 0; ; i++) {
    if (!(i & 255)) {
      vkprintf (1, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
        active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    epoll_work (7);
    random_work (80000 / (1000 / 11));
    if (!process_signals ()) {
      break;
    }
    if (quit_steps && !--quit_steps) break;
  }

  random_free (password_filename, PASSWORD_LENGTH);
  server_exit (&random_engine);
}
