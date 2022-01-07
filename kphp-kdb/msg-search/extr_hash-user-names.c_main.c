
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_id; int text; } ;
typedef TYPE_1__ entry_t ;


 scalar_t__ BUFFSIZE ;
 scalar_t__* Buff ;
 int O_RDONLY ;
 int assert (int) ;
 int close (scalar_t__) ;
 scalar_t__* fd ;
 int flushout () ;
 int fprintf (int ,char*,char*,char*) ;
 int getopt (int,char**,char*) ;
 int init_is_letter () ;
 TYPE_1__* load_entry (int ) ;
 scalar_t__ open (char*,int ) ;
 int optind ;
 int output_stats () ;
 int process_text (int ,int ) ;
 char* progname ;
 scalar_t__* rptr ;
 int stderr ;
 int tot_users ;
 int usage () ;
 int verbose ;
 scalar_t__* wptr ;

int main (int argc, char *argv[]) {
  int i;
  entry_t *E;
  progname = argv[0];
  while ((i = getopt (argc, argv, "hv")) != -1) {
    switch (i) {
    case 'v':
      verbose = 1;
      break;
    case 'h':
      usage();
      return 2;
    }
  }
  if (argc <= optind) {
    usage();
    return 2;
  }

  init_is_letter ();

  rptr[2] = wptr[2] = Buff[2];

  while (optind < argc) {
    fd[0] = open (argv[optind], O_RDONLY);
    if (fd[0] < 0) {
      fprintf (stderr, "%s: cannot open() %s: %m\n", progname, argv[optind]);
      optind++;
      continue;
    }
    assert (fd[0] >= 0);
    rptr[0] = wptr[0] = Buff[0] + BUFFSIZE;

    while ((E = load_entry(0)) != 0) {
      tot_users++;
      process_text (E->text, E->user_id);
    }

    close (fd[0]);
    optind++;
  }

  flushout();

  if (verbose) {
    output_stats();
  }

  return 0;
}
