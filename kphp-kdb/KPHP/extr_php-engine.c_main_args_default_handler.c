
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BACKLOG ;
 void* MAX_CONNECTIONS ;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 void* atoi (int ) ;
 void* backlog ;
 int daemonize ;
 int init_logname (int ) ;
 int max_memory ;
 void* maxconn ;
 int mlockall (int) ;
 int optarg ;
 int usage () ;
 int username ;
 int verbosity ;
 int vkprintf (int,char*) ;

int main_args_default_handler (int i) {
  switch (i) {
  case 'b':
    backlog = atoi (optarg);
    if (backlog <= 0) {
      backlog = BACKLOG;
    }
    break;
  case 'c':
    maxconn = atoi (optarg);
    if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
      maxconn = MAX_CONNECTIONS;
    }
    break;
  case 'l':
    init_logname (optarg);
    break;
  case 'm':
    max_memory = atoi (optarg);
    if (max_memory < 1) {
      max_memory = 1;
    }
    if (max_memory > 2047) {
      max_memory = 2047;
    }
    max_memory *= 1048576;
    break;
  case 'u':
    username = optarg;
    break;
  case 'd':
    daemonize ^= 1;
    break;
  case 'h':
    usage();
    return 2;
  case 'k':
    if (mlockall (MCL_CURRENT | MCL_FUTURE) != 0) {
      vkprintf (-1, "error: fail to lock paged memory\n");
    }
    break;
  case 'v':
    verbosity++;
    break;
  default:
    return 0;
  }
  return 1;
}
