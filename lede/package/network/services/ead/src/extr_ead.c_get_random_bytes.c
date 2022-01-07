
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (int) ;
 int exit (int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int read (int,void*,int) ;

__attribute__((used)) static void
get_random_bytes(void *ptr, int len)
{
 int fd;

 fd = open("/dev/urandom", O_RDONLY);
 if (fd < 0) {
  perror("open");
  exit(1);
 }
 read(fd, ptr, len);
 close(fd);
}
