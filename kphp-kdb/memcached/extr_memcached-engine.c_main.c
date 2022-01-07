
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BACKLOG ;
 int LAST_OPER_BUF_SIZE ;
 int MAX_CONNECTIONS ;
 scalar_t__ MAX_ZMALLOC_MEM ;
 int MCL_FUTURE ;
 int adjust_oom_score (void*) ;
 int aes_load_pwd_file (int ) ;
 void* atoi (void*) ;
 void* backlog ;
 int daemonize ;
 int dynamic_data_buffer_size ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int get_min_memory () ;
 scalar_t__ geteuid () ;
 int getopt (int,char**,char*) ;
 int help () ;
 int init_dyn_data () ;
 int init_hash_table () ;
 int last_oper_type ;
 void* logname ;
 int max_memory ;
 int maxconn ;
 int memset (int ,int,int) ;
 int mlockall (int ) ;
 int nice (void*) ;
 void* oom_score_adj ;
 void* optarg ;
 int optind ;
 int perror (char*) ;
 int port ;
 scalar_t__ raise_file_rlimit (int) ;
 int return_false_if_not_found ;
 int rpc_crc32_mode ;
 int rpc_disable_crc32_check ;
 scalar_t__ server_socket (int,int ,void*,int ) ;
 int settings_addr ;
 scalar_t__ sfd ;
 int start_server () ;
 int start_time ;
 int stderr ;
 int time (int *) ;
 void* udp_port ;
 void* username ;
 int verbosity ;

int main (int argc, char *argv[]) {
  int i;
  rpc_disable_crc32_check = 1;

  while ((i = getopt (argc, argv, "b:c:l:p:U:m:n:dfhu:vrkO:C:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      help();
      return 2;
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
    case 'm':
      max_memory = atoi (optarg);
      max_memory -= get_min_memory();
      if (max_memory < 1) {
        max_memory = 1;
      }
      max_memory *= 1048576;
      break;
    case 'n':
      errno = 0;
      nice (atoi (optarg));
      if (errno) {
        perror ("nice");
      }
      break;
    case 'p':
      port = atoi (optarg);
      break;
    case 'O':
      oom_score_adj = atoi (optarg);
      break;
    case 'U':
      udp_port = atoi (optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'l':
      logname = optarg;
      break;
    case 'd':
      daemonize ^= 1;
      break;
    case 'f':
      return_false_if_not_found = 1;
      break;
    case 'r':

      break;
    case 'C':
      rpc_crc32_mode = atoi (optarg);
      rpc_disable_crc32_check = (rpc_crc32_mode & 1);
    case 'k':
      break;
      if (mlockall ( MCL_FUTURE) != 0) {
        fprintf (stderr, "error: fail to lock paged memory\n");
      }
      break;
    }
  }

  if (argc != optind) {
    help();
    return 2;
  }

  if (!username && maxconn == MAX_CONNECTIONS && geteuid()) {
    maxconn = 1000;
  }

  if (dynamic_data_buffer_size > max_memory) {
    dynamic_data_buffer_size = max_memory;
  }

  if (MAX_ZMALLOC_MEM > 0) {
    init_dyn_data();
  }

  init_hash_table();




  if (raise_file_rlimit (maxconn + 16) < 0) {
    fprintf (stderr, "fatal: cannot raise open file limit to %d\n", maxconn + 16);
    exit (1);
  }

  if (oom_score_adj) {
    adjust_oom_score (oom_score_adj);
  }

  aes_load_pwd_file (0);

  sfd = server_socket (port, settings_addr, backlog, 0);
  if (sfd < 0) {
    fprintf (stderr, "cannot open server socket at port %d: %m\n", port);
    exit (1);
  }

  start_time = time (((void*)0));

  start_server();

  return 0;
}
