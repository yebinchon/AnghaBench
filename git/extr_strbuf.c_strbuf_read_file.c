
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int ssize_t ;


 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int open (char const*,int ) ;
 int strbuf_read (struct strbuf*,int,size_t) ;

ssize_t strbuf_read_file(struct strbuf *sb, const char *path, size_t hint)
{
 int fd;
 ssize_t len;
 int saved_errno;

 fd = open(path, O_RDONLY);
 if (fd < 0)
  return -1;
 len = strbuf_read(sb, fd, hint);
 saved_errno = errno;
 close(fd);
 if (len < 0) {
  errno = saved_errno;
  return -1;
 }

 return len;
}
