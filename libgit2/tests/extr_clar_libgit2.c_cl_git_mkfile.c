
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int cl_must_pass (int ) ;
 int p_close (int) ;
 int p_creat (char const*,int) ;
 int p_write (int,char const*,int) ;
 int strlen (char const*) ;

void cl_git_mkfile(const char *filename, const char *content)
{
 int fd;

 fd = p_creat(filename, 0666);
 cl_assert(fd != -1);

 if (content) {
  cl_must_pass(p_write(fd, content, strlen(content)));
 } else {
  cl_must_pass(p_write(fd, filename, strlen(filename)));
  cl_must_pass(p_write(fd, "\n", 1));
 }

 cl_must_pass(p_close(fd));
}
