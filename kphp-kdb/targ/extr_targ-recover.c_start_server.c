
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; scalar_t__ h_addr; int h_addr_list; } ;
struct TYPE_3__ {int port; struct in_addr target; } ;


 scalar_t__ AF_INET ;
 int NB_alloc ;
 int NB_max ;
 int NB_used ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int VB ;
 int active_connections ;
 int assert (int) ;
 scalar_t__ change_user (char*) ;
 int conn ;
 int create_all_outbound_connections () ;
 int create_target (TYPE_1__*,int ) ;
 int cron () ;
 scalar_t__ daemonize ;
 TYPE_1__ default_ct ;
 scalar_t__ disable_log ;
 int epoll_work (int) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 struct hostent* gethostbyname (char*) ;
 char* hostname ;
 int init_epoll () ;
 int init_netbuffers () ;
 int interactive ;
 int maxconn ;
 int now ;
 scalar_t__ open (int ,int,int) ;
 int port ;
 scalar_t__ query_log ;
 scalar_t__ quit_steps ;
 int setsid () ;
 int sighup_handler ;
 int sigint_handler ;
 int signal (int ,int ) ;
 int sigterm_handler ;
 int sigusr1_handler ;
 int sprintf (int ,char*,char*) ;
 scalar_t__ stat_log ;
 int stderr ;
 char* suffix ;
 int test_mode ;
 char* username ;
 scalar_t__ verbosity ;

void start_server (void) {
  int i;
  int prev_time;
  struct hostent *h;

  init_epoll();
  init_netbuffers();

  prev_time = 0;

  if (daemonize) {
    setsid();
  }

  if (change_user(username) < 0 && !interactive && !test_mode) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit(1);
  }

  sprintf (VB, "disable%s.bin", suffix);
  disable_log = open (VB, O_CREAT | O_EXCL | O_WRONLY, 0640);
  sprintf (VB, "query%s.bin", suffix);
  query_log = open (VB, O_CREAT | O_EXCL | O_WRONLY, 0640);
  sprintf (VB, "stat%s.bin", suffix);
  stat_log = open (VB, O_CREAT | O_EXCL | O_WRONLY, 0640);

  assert (disable_log >= 0 && query_log >= 0 && stat_log >= 0);

  if (!(h = gethostbyname (hostname)) || h->h_addrtype != AF_INET || h->h_length != 4 || !h->h_addr_list || !h->h_addr) {
    fprintf (stderr, "fatal: cannot resolve hostname %s: %m\n", hostname);
    exit (1);
  }

  default_ct.target = *(struct in_addr *) h->h_addr;
  default_ct.port = port;
  conn = create_target (&default_ct, 0);

  create_all_outbound_connections ();

  signal(SIGINT, sigint_handler);
  signal(SIGTERM, sigterm_handler);
  signal(SIGUSR1, sigusr1_handler);
  if (daemonize) {
    signal(SIGHUP, sighup_handler);
  }

  for (i = 0; ; i++) {
    if (verbosity > 0 && !(i & 255)) {
      fprintf (stderr, "epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\n",
        active_connections, maxconn, NB_used, NB_alloc, NB_max);
    }
    epoll_work (57);
    if (now != prev_time) {
      prev_time = now;
      cron();
    }
    if (quit_steps && !--quit_steps) break;
  }

}
