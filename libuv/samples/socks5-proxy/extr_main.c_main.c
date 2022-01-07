
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int idle_timeout; int bind_port; int bind_host; } ;
typedef TYPE_1__ server_config ;
typedef int config ;


 int DEFAULT_BIND_HOST ;
 int DEFAULT_BIND_PORT ;
 int DEFAULT_IDLE_TIMEOUT ;
 int exit (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_opts (TYPE_1__*,int,char**) ;
 char* progname ;
 int server_run (TYPE_1__*,int ) ;
 int uv_default_loop () ;

int main(int argc, char **argv) {
  server_config config;
  int err;

  progname = argv[0];
  memset(&config, 0, sizeof(config));
  config.bind_host = DEFAULT_BIND_HOST;
  config.bind_port = DEFAULT_BIND_PORT;
  config.idle_timeout = DEFAULT_IDLE_TIMEOUT;
  parse_opts(&config, argc, argv);

  err = server_run(&config, uv_default_loop());
  if (err) {
    exit(1);
  }

  return 0;
}
