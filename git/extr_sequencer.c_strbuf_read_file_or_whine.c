
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int O_RDONLY ;
 int _ (char*) ;
 int close (int) ;
 scalar_t__ error (int ,char const*) ;
 scalar_t__ error_errno (int ,char const*) ;
 int open (char const*,int ) ;
 scalar_t__ strbuf_read (struct strbuf*,int,int ) ;

__attribute__((used)) static ssize_t strbuf_read_file_or_whine(struct strbuf *sb, const char *path)
{
 int fd;
 ssize_t len;

 fd = open(path, O_RDONLY);
 if (fd < 0)
  return error_errno(_("could not open '%s'"), path);
 len = strbuf_read(sb, fd, 0);
 close(fd);
 if (len < 0)
  return error(_("could not read '%s'."), path);
 return len;
}
