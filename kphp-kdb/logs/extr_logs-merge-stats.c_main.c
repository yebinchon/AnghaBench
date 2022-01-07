
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_FN ;
 size_t ansI ;
 int assert (int) ;
 scalar_t__ atoi (void*) ;
 scalar_t__ change_user (char*) ;
 int close_data () ;
 int dl_set_debug_handlers () ;
 scalar_t__ engineF ;
 scalar_t__ engineN ;
 int exit (int) ;
 int ** f ;
 int * fopen (void*,char*) ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 int init_data () ;
 void* optarg ;
 int optind ;
 void* out_name ;
 char* progname ;
 int run () ;
 char* stat_name ;
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

  while ((i = getopt (argc, argv, "hF:N:o:u:")) != -1) {
    switch (i) {
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

  if (argc != optind + 1) {
    usage();
    return 2;
  }
  stat_name = argv[optind];

  if (change_user (username) < 0) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  assert (engineN > engineF && engineF >= 0);
  ansI = engineN + 1;

  assert (engineN + 1 < MAX_FN);

  f[ansI] = fopen (out_name, "w");
  assert (f[ansI] != ((void*)0));

  init_data();
  run();
  close_data();

  return 0;
}
