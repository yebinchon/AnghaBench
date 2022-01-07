
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int cl_must_pass (int ) ;
 int p_close (int) ;
 int p_open (char const*,int,unsigned int) ;
 int p_write (int,char const*,size_t) ;
 size_t strlen (char const*) ;

void cl_git_write2file(
 const char *path, const char *content, size_t content_len,
 int flags, unsigned int mode)
{
 int fd;
 cl_assert(path && content);
 cl_assert((fd = p_open(path, flags, mode)) >= 0);
 if (!content_len)
  content_len = strlen(content);
 cl_must_pass(p_write(fd, content, content_len));
 cl_must_pass(p_close(fd));
}
