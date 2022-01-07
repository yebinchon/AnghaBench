
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pr_rssize; } ;
typedef TYPE_1__ psinfo_t ;
typedef int psinfo ;
typedef int pp ;


 int O_RDONLY ;
 int UV_EINVAL ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ getpid () ;
 int open (char*,int ) ;
 int read (int,TYPE_1__*,int) ;
 int snprintf (char*,int,char*,unsigned long) ;
 int uv__close (int) ;

int uv_resident_set_memory(size_t* rss) {
  char pp[64];
  psinfo_t psinfo;
  int err;
  int fd;

  snprintf(pp, sizeof(pp), "/proc/%lu/psinfo", (unsigned long) getpid());

  fd = open(pp, O_RDONLY);
  if (fd == -1)
    return UV__ERR(errno);


  err = UV_EINVAL;
  if (read(fd, &psinfo, sizeof(psinfo)) == sizeof(psinfo)) {
    *rss = (size_t)psinfo.pr_rssize * 1024;
    err = 0;
  }
  uv__close(fd);

  return err;
}
