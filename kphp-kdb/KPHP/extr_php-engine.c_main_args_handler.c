
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_SCRIPT_TIMEOUT ;
 void* MAX_WORKERS ;
 void* atoi (char*) ;
 char* cluster_name ;
 void* http_port ;
 int ini_set (char*,char*) ;
 int master_flag ;
 void* master_port ;
 int no_sql ;
 char* optarg ;
 int read_engine_tag (char*) ;
 int read_tl_config (char*) ;
 char* rpc_client_host ;
 void* rpc_client_port ;
 void* rpc_port ;
 int run_once ;
 int script_timeout ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;
 int usage () ;
 int vkprintf (int,char*) ;
 void* workers_n ;

int main_args_handler (int i) {
  switch (i) {
  case 'D':
    {
      char *key = optarg, *value;
      char *eq = strchr (key, '=');
      if (eq == ((void*)0)) {
        vkprintf (-1, "-D option, can't find '='\n");
        usage();
        return 2;
      }
      value = eq + 1;
      *eq = 0;
      ini_set (key, value);
    }
    break;
  case 'H':
    http_port = atoi (optarg);
    break;
  case 'r':
    rpc_port = atoi (optarg);
    break;
  case 'w':
    rpc_client_host = optarg;
    {
      char *colon = strrchr ((char *)rpc_client_host, ':');
      if (colon == ((void*)0)) {
        vkprintf (-1, "-w option, can't find ':'\n");
        usage();
        return 2;
      }
      *colon++ = 0;
      rpc_client_port = atoi (colon);
    }
    break;
  case 'E':
    read_engine_tag (optarg);
    break;
  case 'f':
    workers_n = atoi (optarg);
    if (workers_n >= 0) {
      if (workers_n > MAX_WORKERS) {
        workers_n = MAX_WORKERS;
      }
      master_flag = 1;
    }
    break;
  case 'p':
    master_port = atoi (optarg);
    break;
  case 's':
    cluster_name = optarg;
    break;
  case 'T':
    read_tl_config (optarg);
    break;
  case 't':
    script_timeout = atoi (optarg);
    if (script_timeout < 1) {
      script_timeout = 1;
    }
    if (script_timeout > MAX_SCRIPT_TIMEOUT) {
      script_timeout = MAX_SCRIPT_TIMEOUT;
    }
    break;
  case 'o':
    run_once = 1;
    break;
  case 'q':
    no_sql = 1;
    break;
  default:
    return 0;
  }
  return 1;
}
