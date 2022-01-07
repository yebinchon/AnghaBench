
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_FN ;
 scalar_t__ ansI ;
 int assert (int) ;
 scalar_t__ atoi (void*) ;
 scalar_t__ change_user (char*) ;
 int dl_open_file (scalar_t__,void*,int) ;
 int dl_set_debug_handlers () ;
 void* dump_name ;
 scalar_t__ engineF ;
 scalar_t__ engineN ;
 int exit (int) ;
 int flush_w_buff () ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 int init_data () ;
 void* optarg ;
 int optind ;
 void* out_name ;
 char* progname ;
 int run () ;
 int stderr ;
 int usage () ;
 char* username ;

int main (int argc, char *argv[]) {
  int i;

  dl_set_debug_handlers ();
  progname = argv[0];

  if (argc == 1) {
    usage();
    return 2;
  }

  while ((i = getopt (argc, argv, "d:hF:N:o:u:")) != -1) {
    switch (i) {
    case 'd':
      dump_name = optarg;
      break;
    case 'h':
      usage ();
      return 2;
    case 'F':
      engineF = atoi (optarg);
      break;
    case 'N':
      engineN = atoi (optarg);
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

  assert (engineN > engineF && engineF >= 0);
  ansI = engineN + 1;

  assert (engineN + 1 < MAX_FN);

  dl_open_file (ansI, out_name, 2);

  init_data();
  run();

  flush_w_buff();
  return 0;
}
