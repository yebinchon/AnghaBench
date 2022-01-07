
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int _ (char*) ;
 scalar_t__ close (int) ;
 int die_errno (int ,char const*) ;
 scalar_t__ write_in_full (int,char const*,size_t) ;
 int xopen (char const*,int,int) ;

void write_file_buf(const char *path, const char *buf, size_t len)
{
 int fd = xopen(path, O_WRONLY | O_CREAT | O_TRUNC, 0666);
 if (write_in_full(fd, buf, len) < 0)
  die_errno(_("could not write to '%s'"), path);
 if (close(fd))
  die_errno(_("could not close '%s'"), path);
}
