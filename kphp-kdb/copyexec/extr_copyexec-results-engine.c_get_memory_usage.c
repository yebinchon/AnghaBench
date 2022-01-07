
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int a ;


 scalar_t__ EINTR ;
 int O_RDONLY ;
 int _SC_PAGESIZE ;
 scalar_t__ close (int) ;
 scalar_t__ errno ;
 int isspace (char) ;
 int memset (long long*,int ,int) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int sscanf (char*,char*,long long*) ;
 long long sysconf (int ) ;
 int vkprintf (int,char*,char*) ;

int get_memory_usage (long long *a, int m) {
  memset (a, 0, sizeof (a[0]) * m);
  char buf[1024], *p;
  int fd = open ("/proc/self/statm", O_RDONLY), n = -1, i;
  if (fd < 0) {
    return -1;
  }
  do {
    n = read (fd, buf, sizeof (buf));
    if (n < 0) {
      if (errno == EINTR) {
        continue;
      }
    }
    break;
  } while (1);

  while (close (fd) < 0 && errno == EINTR) {}

  if (n < 0 || n >= sizeof (buf)) {
    return -1;
  }
  buf[n] = 0;
  vkprintf (3, "/proc/self/statm: %s\n", buf);
  long long page_size = sysconf (_SC_PAGESIZE);
  p = buf;
  for (i = 0; i < m; i++) {
    if (sscanf (p, "%lld", &a[i]) != 1) {
      return -1;
    }
    a[i] *= page_size;
    while (*p && !isspace (*p)) {
      p++;
    }
  }
  return 0;
}
