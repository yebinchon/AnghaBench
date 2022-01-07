
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_FN ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int SEEK_END ;
 int SEEK_SET ;
 int dl_strdup (char const*) ;
 int exit (int) ;
 int* fd ;
 int * fnames ;
 scalar_t__* fpos ;
 int fprintf (int ,char*,char const*,...) ;
 int* fread_only ;
 int * fsize ;
 int lseek (int,int ,int ) ;
 int open (char const*,int,int) ;
 char* progname ;
 int stderr ;
 scalar_t__ verbosity ;

int dl_open_file (int x, const char *fname, int creat) {
  if (x < 0 || x >= MAX_FN) {
    fprintf (stderr, "%s: cannot open %s, bad local fid %d: %m\n", progname, fname, x);
    return -1;
  }

  fnames[x] = dl_strdup (fname);
  int options;
  if (creat > 0) {
    options = O_RDWR | O_CREAT;
    if (creat == 2) {
      options |= O_TRUNC;
    }
  } else {
    fread_only[x] = 1;
    options = O_RDONLY;
  }

  fd[x] = open (fname, options, 0600);
  if (creat < 0 && fd[x] < 0) {
    fprintf (stderr, "%s: cannot open %s: %m\n", progname, fname);
    return -1;
  }
  if (fd[x] < 0) {
    fprintf (stderr, "%s: cannot open %s: %m\n", progname, fname);
    exit (1);
  }
  fsize[x] = lseek (fd[x], 0, SEEK_END);
  if (fsize[x] < 0) {
    fprintf (stderr, "%s: cannot seek %s: %m\n", progname, fname);
    exit (2);
  }
  lseek (fd[x], 0, SEEK_SET);
  if (verbosity) {
    fprintf (stderr, "opened file %s, fd=%d, size=%lld\n", fname, fd[x], fsize[x]);
  }
  fpos[x] = 0;
  return fd[x];
}
