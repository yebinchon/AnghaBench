
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; scalar_t__ h_addr; int h_addr_list; } ;
struct TYPE_3__ {struct in_addr target; void* port; } ;


 scalar_t__ AF_INET ;
 void* BACKLOG ;
 scalar_t__ MAX_CONNECTIONS ;
 scalar_t__ additional ;
 int aes_load_pwd_file (int ) ;
 void* atoi (void*) ;
 scalar_t__ auth_key_id ;
 void* backlog ;
 scalar_t__ change_user (char*) ;
 int compiler ;
 int create_target (TYPE_1__*,int ) ;
 scalar_t__ daemonize ;
 TYPE_1__ default_ct ;
 scalar_t__ errno ;
 int exit (int) ;
 struct hostent* gethostbyname (char*) ;
 int getopt (int,char**,char*) ;
 char* hostname ;
 int init_dyn_data () ;
 int kprintf (char*,char*) ;
 void* logname ;
 scalar_t__ maxconn ;
 int open_log () ;
 void* optarg ;
 int optind ;
 void* port ;
 char* progname ;
 scalar_t__ raise_file_rlimit (scalar_t__) ;
 int read_rc_file () ;
 int rl_attempted_completion_function ;
 scalar_t__ session_id ;
 int set_debug_handlers () ;
 int sscanf (void*,char*,scalar_t__*) ;
 int start_server () ;
 int start_time ;
 int stderr ;
 int strncpy (char*,void*,int) ;
 int targ ;
 int time (int ) ;
 int tl_compiler_print_errors (int *,int ) ;
 int tl_completion ;
 scalar_t__ tl_schema_read_from_file (int *,char*) ;
 int tl_string_buffer_init (int *) ;
 int unserialize_buff ;
 int usage () ;
 char* username ;
 int verbosity ;
 int vkprintf (int,char*,scalar_t__,scalar_t__) ;

int main (int argc, char *argv[]) {
  int i;
  set_debug_handlers ();
  progname = argv[0];
  daemonize = 0;
  errno = 0;
  while ((i = getopt (argc, argv, "A:S:a:b:c:l:p:dhu:v")) != -1) {
    switch (i) {
    case 'A':
      sscanf (optarg, "%16llx", &auth_key_id);
      break;
    case 'S':
      sscanf (optarg, "%16llx", &session_id);
      break;
    case 'a':
      strncpy (hostname, optarg, 255);
      break;
    case 'b':
      backlog = atoi(optarg);
      if (backlog <= 0) backlog = BACKLOG;
      break;
    case 'c':
      maxconn = atoi (optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
        maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'h':
      usage();
      return 2;
    case 'l':
      logname = optarg;
      break;
    case 'p':
      default_ct.port = port = atoi(optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'v':
      verbosity++;
      break;
    }
  }

  if (argc != optind + 1) {
    usage ();
  }

  if (auth_key_id == 0) {
    additional = 0;
  }

  vkprintf (4, "auth_key_id: 0x%llx, session_id: 0x%llx\n", auth_key_id, session_id);

  init_dyn_data ();

  if (raise_file_rlimit (maxconn + 16) < 0) {
    kprintf ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    exit (1);
  }

  aes_load_pwd_file (0);

  if (change_user (username) < 0) {
    kprintf ("fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  open_log ();

  start_time = time (0);

  struct hostent *h;
  if (!(h = gethostbyname (hostname)) || h->h_addrtype != AF_INET || h->h_length != 4 || !h->h_addr_list || !h->h_addr) {
    kprintf ("cannot resolve %s\n", hostname);
    exit (2);
  }
  default_ct.target = *((struct in_addr *) h->h_addr);

  targ = create_target (&default_ct, 0);

  if (tl_schema_read_from_file (&compiler, argv[optind]) < 0) {
    kprintf ("Error in \"%s\"\n", argv[optind]);
    tl_compiler_print_errors (&compiler, stderr);
    exit (1);
  }

  rl_attempted_completion_function = tl_completion;

  tl_string_buffer_init (&unserialize_buff);

  read_rc_file ();

  start_server ();

  return 0;
}
