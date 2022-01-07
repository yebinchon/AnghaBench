
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 int icpl_init () ;
 scalar_t__ icpl_parse (char*) ;
 char* icpl_readfile (char*) ;
 int init_dyn_data () ;
 int kprintf (char*,char*) ;
 int optind ;
 int set_debug_handlers () ;
 int usage () ;
 int verbosity ;

int main (int argc, char *argv[]) {
  int i;
  set_debug_handlers ();
  while ((i = getopt (argc, argv, "hv")) != -1) {
    switch (i) {
    case 'h':
      usage ();
      return 2;
    case 'v':
      verbosity++;
      break;
    }
  }

  if (argc != optind + 1) {
    usage ();
  }

  char *prog_filename = argv[optind];

  init_dyn_data ();
  icpl_init ();
  char *a = icpl_readfile (prog_filename);
  if (a == ((void*)0)) {
    kprintf ("icpl_readfile (\"%s\") fail.\n", prog_filename);
    exit (1);
  }

  if (icpl_parse (a) < 0) {
    free (a);
    exit (1);
  }

  free (a);
  return 0;
}
