
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_WRONLY ;
 int SEEK_END ;
 int SEEK_SET ;
 int assert (int) ;
 scalar_t__ change_user (char*) ;
 int close (int) ;
 int exit (int) ;
 scalar_t__ fdatasync (int) ;
 int flush_out () ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 int idx_fd ;
 char* idx_fname ;
 void* idx_size ;
 int load_index_header (int,void*) ;
 void* lseek (int,int ,int ) ;
 void* open (char*,int,...) ;
 char* optarg ;
 int optind ;
 int output_stats () ;
 int prepare_read () ;
 scalar_t__ process_record () ;
 char* progname ;
 int rend ;
 int rptr ;
 scalar_t__ src_fd ;
 char* src_fname ;
 int stderr ;
 int targ_fd ;
 char* targ_fname ;
 scalar_t__ targ_orig_size ;
 int usage () ;
 char* username ;
 scalar_t__ verbosity ;

int main (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = getopt (argc, argv, "hvu:")) != -1) {
    switch (i) {
    case 'v':
      verbosity = 1;
      break;
    case 'h':
      usage();
      return 2;
    case 'u':
      username = optarg;
      break;
    }
  }

  if (optind + 1 >= argc || optind + 3 < argc) {
    usage();
    return 2;
  }

  idx_fname = argv[optind];
  src_fname = argv[optind + 1];

  if (username && change_user (username) < 0) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  idx_fd = open (idx_fname, O_RDONLY);
  if (idx_fd < 0) {
    fprintf (stderr, "cannot open index %s: %m\n", idx_fname);
    return 1;
  }

  idx_size = lseek (idx_fd, 0, SEEK_END);
  lseek (idx_fd, 0, SEEK_SET);

  load_index_header (idx_fd, idx_size);

  src_fd = open (src_fname, O_RDONLY);
  if (src_fd < 0) {
    fprintf (stderr, "cannot open %s: %m\n", src_fname);
    return 1;
  }

  if (optind + 2 < argc) {
    targ_fname = argv[optind+2];
    targ_fd = open (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      fprintf (stderr, "cannot create %s: %m\n", targ_fname);
      return 1;
    }
    targ_orig_size = lseek (targ_fd, 0, SEEK_END);
    assert (targ_orig_size > 0);
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  prepare_read ();
  for (i = 0; i <= 2; i++) {
    if (rend - rptr >= 4096 && *((int *) rptr) == 0x0473664b) {
      rptr += 4096;
    }
  }

  while (process_record() >= 0) { }

  flush_out();

  if (targ_fd != 1) {
    if (fdatasync(targ_fd) < 0) {
      fprintf (stderr, "error syncing %s: %m", targ_fname);
      exit (1);
    }
    close (targ_fd);
  }

  if (verbosity > 0) {
    output_stats();
  }

  return rend > rptr ? 1 : 0;
}
