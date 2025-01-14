
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;


 scalar_t__ EINTR ;
 int O_RDONLY ;
 int UV_EINVAL ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ errno ;
 long getpagesize () ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 char* strchr (char const*,char) ;
 long strtol (char const*,int *,int) ;
 int uv__close (int) ;

int uv_resident_set_memory(size_t* rss) {
  char buf[1024];
  const char* s;
  ssize_t n;
  long val;
  int fd;
  int i;

  do
    fd = open("/proc/self/stat", O_RDONLY);
  while (fd == -1 && errno == EINTR);

  if (fd == -1)
    return UV__ERR(errno);

  do
    n = read(fd, buf, sizeof(buf) - 1);
  while (n == -1 && errno == EINTR);

  uv__close(fd);
  if (n == -1)
    return UV__ERR(errno);
  buf[n] = '\0';

  s = strchr(buf, ' ');
  if (s == ((void*)0))
    goto err;

  s += 1;
  if (*s != '(')
    goto err;

  s = strchr(s, ')');
  if (s == ((void*)0))
    goto err;

  for (i = 1; i <= 22; i++) {
    s = strchr(s + 1, ' ');
    if (s == ((void*)0))
      goto err;
  }

  errno = 0;
  val = strtol(s, ((void*)0), 10);
  if (errno != 0)
    goto err;
  if (val < 0)
    goto err;

  *rss = val * getpagesize();
  return 0;

err:
  return UV_EINVAL;
}
