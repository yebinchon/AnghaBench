
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BACKLOG ;
 void* MAX_CONNECTIONS ;
 int PASSWORD_LENGTH ;
 int assert (int) ;
 void* atoi (void*) ;
 void* backlog ;
 int daemonize ;
 int engine_init (int *,int ,int ) ;
 int getopt (int,char**,char*) ;
 int kprintf (char*) ;
 void* logname ;
 void* maxconn ;
 void* optarg ;
 int optind ;
 char* password_filename ;
 void* port ;
 char* progname ;
 int random_engine ;
 int random_init (int,int,char*,int ) ;
 int set_debug_handlers () ;
 int sscanf (void*,char*,long long*,char*) ;
 int start_server () ;
 int start_time ;
 int time (int ) ;
 int usage () ;
 void* username ;
 int verbosity ;

int main (int argc, char *argv[]) {
  char c;
  long long x;
  int i, key_len = 2048, buffer_size = 0;

  set_debug_handlers ();
  daemonize = 1;

  progname = argv[0];
  while ((i = getopt (argc, argv, "N:b:c:dhl:p:s:u:v")) != -1) {
    switch (i) {
    case 'N':
      key_len = atoi (optarg);
      break;
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
    case 'd':
      daemonize ^= 1;
      break;
    case 'h':
      usage ();
      break;
    case 'l':
      logname = optarg;
      break;
    case 'v':
      verbosity++;
      break;
    case 'p':
      port = atoi (optarg);
      break;
    case 's':
       c = 0;
       assert (sscanf (optarg, "%lld%c", &x, &c) >= 1);
       switch (c | 0x20) {
         case 'k': x <<= 10; break;
         case 'm': x <<= 20; break;
         case 'g': x <<= 30; break;
         case 't': x <<= 40; break;
         default: assert (c == 0x20);
       }
       if (x >= 1024 && x < (1LL << 30)) {
         buffer_size = x;
       }
      break;
    case 'u':
      username = optarg;
      break;
    }
  }

  if (optind + 1 != argc) {
    kprintf ("<password-file> wasn't given\n");
    usage ();
  }

  password_filename = argv[optind];

  engine_init (&random_engine, 0, 0);

  start_time = time (0);

  random_init (2048, buffer_size, password_filename, PASSWORD_LENGTH);

  start_server ();
  return 0;
}
