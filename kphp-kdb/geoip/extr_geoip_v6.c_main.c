
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int atoi (scalar_t__) ;
 int buff ;
 int dump (int *,int) ;
 int fgets (int ,int,int ) ;
 int fprintf (int ,char*,int) ;
 int freopen (scalar_t__,char*,int ) ;
 int getopt (int,char**,char*) ;
 int help () ;
 int init () ;
 scalar_t__ input_file ;
 scalar_t__ optarg ;
 int optind ;
 scalar_t__ output_file ;
 int root ;
 int run () ;
 int set_debug_handlers () ;
 int stderr ;
 int stdin ;
 int stdout ;
 int total_out ;
 scalar_t__ verbosity ;

int main (int argc, char **argv) {
  int i;
  int skip_lines = 0;
  set_debug_handlers ();

  while ((i = getopt (argc, argv, "i:o:vhs:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      help();
      return 2;
    case 'i':
      input_file = optarg;
      break;
    case 'o':
      output_file = optarg;
      break;
    case 's':
      skip_lines = atoi (optarg);
      break;
    default:
      help ();
      return 2;
    }
  }

  if (argc != optind || !input_file) {
    help();
    return 2;
  }

  if (output_file) {
    assert (freopen (output_file, "wt", stdout));
  }

  assert (freopen (input_file, "rt", stdin));
  for (i = 0; i < skip_lines; i++) {
    assert (fgets (buff, 1000000, stdin));
  }

  init ();
  run ();
  dump (&root, -1);
  if (verbosity) {
    fprintf (stderr, "Total %d rules\n", total_out);
  }

  return 0;
}
