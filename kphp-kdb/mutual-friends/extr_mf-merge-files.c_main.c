
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXH ;
 int SEEK_SET ;
 size_t ansI ;
 int assert (int) ;
 void* atoi (void*) ;
 scalar_t__ change_user (char*) ;
 int engineN ;
 int exceptionsI ;
 void* exceptions_name ;
 int exit (int) ;
 int * fd ;
 int flush_w_buff () ;
 int fprintf (int ,char*,char*) ;
 int friendsI ;
 void* friends_name ;
 int fsz ;
 int getopt (int,char**,char*) ;
 int init_data () ;
 int init_files (int) ;
 scalar_t__ lseek (int ,int ,int ) ;
 int open_file (size_t,void*,int) ;
 void* optarg ;
 int optind ;
 void* out_name ;
 char* progname ;
 int run () ;
 int set_debug_handlers () ;
 int stderr ;
 int test_mode ;
 scalar_t__ this_mod ;
 int un ;
 int usage () ;
 int userN ;
 char* username ;
 int write (int ,int*,int) ;

int main (int argc, char *argv[]) {
  int i;

  assert ((MAXH & (MAXH - 1)) == 0);

  set_debug_handlers();
  progname = argv[0];


  if (argc == 1) {
    usage();
    return 2;
  }

  while ((i = getopt (argc, argv, "hU:E:T:F:B:to:u:")) != -1) {
    switch (i) {
    case 'h':
      usage ();
      return 2;
    case 'U':
      userN = atoi (optarg);
      break;
    case 'E':
      engineN = atoi (optarg);
      break;
    case 'T':
      this_mod = atoi (optarg);
      break;
    case 'F':
      friends_name = optarg;
      break;
    case 'B':
      exceptions_name = optarg;
      break;
    case 't':
      test_mode = 1;
      break;
    case 'o':
      out_name = optarg;
      break;
    case 'u':
      username = optarg;
      break;
    }
  }
  if (argc != optind) {
    usage();
    return 2;
  }

  if (change_user (username) < 0) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  assert (userN >= 0);
  assert (engineN >= 0);
  assert (this_mod >= 0);
  friendsI = engineN;
  exceptionsI = engineN + 1;
  ansI = engineN + 2;

  init_files (engineN + 3);

  open_file (ansI, out_name, 2);

  fsz = -1;
  write (fd[ansI], &fsz, sizeof (long long));
  fsz = sizeof (long long);

  un = userN / engineN;
  init_data();
  run();

  flush_w_buff();

  assert (lseek (fd[ansI], 0, SEEK_SET) == 0);
  write (fd[ansI], &fsz, sizeof (long long));

  return 0;
}
