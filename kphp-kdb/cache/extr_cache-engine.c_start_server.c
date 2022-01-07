
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int save_index; } ;


 int CACHE_FEATURE_ACCESS_QUERIES ;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int active_connections ;
 int allow_save_index_without_counters ;
 int cache_engine ;
 int cache_features_mask ;
 TYPE_1__ cache_functions ;
 int cache_parse_function ;
 int ct_rpc_server ;
 int disallow_save_index ;
 int epoll_work (int) ;
 int maxconn ;
 int process_signals () ;
 int rpc_methods ;
 int server_exit (int *) ;
 int server_init (int *,TYPE_1__*,int *,int *) ;
 double tl_aio_timeout ;
 int tl_parse_function ;
 int vkprintf (int,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void start_server (void) {
  int i;

  if (!(cache_features_mask & CACHE_FEATURE_ACCESS_QUERIES) && !allow_save_index_without_counters) {
    cache_functions.save_index = disallow_save_index;
  }

  tl_parse_function = cache_parse_function;
  tl_aio_timeout = 2.0;
  server_init (&cache_engine, &cache_functions, &ct_rpc_server, &rpc_methods);

  int quit_steps = 0;

  for (i = 0; ; i++) {
    if (!(i & 255)) {
      vkprintf (1, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
        active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    epoll_work (57);
    if (!process_signals ()) {
      break;
    }
    if (quit_steps && !--quit_steps) break;
  }
  server_exit (&cache_engine);
}
