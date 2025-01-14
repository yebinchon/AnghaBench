
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {long long st_size; int st_mode; } ;


 int F_WRLCK ;
 int O_WRONLY ;
 int S_ISREG (int ) ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ ftruncate (int,long long) ;
 scalar_t__ lock_whole_file (int,int ) ;
 int open (char const*,int ) ;
 int stderr ;
 long long strtoll (char const*,char**,int ) ;
 int usage () ;

int main (int argc, const char *argv[]) {
  char *end;
  struct stat st;
  int fd;

  if (argc != 3) {
    usage();
    return 2;
  }
  long long pos = strtoll (argv[2], &end, 0);
  if (!end || *end || !*argv[2]) {
    usage();
    return 2;
  }
  fd = open (argv[1], O_WRONLY);
  if (fd < 0) {
    fprintf (stderr, "cannot open file %s: %m\n", argv[1]);
    return 1;
  }
  if (fstat (fd, &st) < 0) {
    fprintf (stderr, "cannot stat file %s: %m\n", argv[1]);
    return 1;
  }
  if (!S_ISREG(st.st_mode)) {
    fprintf (stderr, "%s is not a regular file\n", argv[1]);
    return 1;
  }
  if (pos >= st.st_size) {
    fprintf (stderr, "truncate position %lld after end of file\n", pos);
    return 2;
  }
  if (pos < -st.st_size) {
    fprintf (stderr, "truncate position %lld before start of file\n", pos);
    return 2;
  }
  if (pos < 0) {
    pos += st.st_size;
  }
  if (lock_whole_file (fd, F_WRLCK) <= 0) {
    return 1;
  }
  if (ftruncate (fd, pos) < 0) {
    fprintf (stderr, "cannot truncate file %s at position %lld: %m\n", argv[1], pos);
  }
  close (fd);
  return 0;
}
