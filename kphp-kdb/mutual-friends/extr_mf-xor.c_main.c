
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ change_user (char*) ;
 int exit (int) ;
 int* fd ;
 int flush_w_buff () ;
 int fprintf (int ,char*,char*) ;
 int fsync (int) ;
 int getopt (int,char**,char*) ;
 int init_files (int) ;
 int open_file (int,char*,int ) ;
 char* optarg ;
 int optind ;
 char* progname ;
 int run () ;
 int set_debug_handlers () ;
 int stderr ;
 int usage () ;
 char* username ;

int main (int argc, char *argv[]) {
  int i;

  set_debug_handlers ();
  progname = argv[0];

  if (argc == 1) {
    usage();
    return 2;
  }

  while ((i = getopt (argc, argv, "hu:")) != -1) {
    switch (i) {
    case 'h':
      usage ();
      return 2;
    case 'u':
      username = optarg;
      break;
    }
  }
  if (argc != optind + 2) {
    usage();
    return 2;
  }

  if (change_user (username) < 0) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  init_files (3);

  open_file (0, argv[optind], 0);
  open_file (1, argv[optind + 1], 0);
  fd[2] = 1;

  run();

  flush_w_buff();
  fsync (fd[2]);


  return 0;
}
