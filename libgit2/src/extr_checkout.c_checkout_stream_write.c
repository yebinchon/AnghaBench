
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct checkout_stream {int path; int fd; } ;
typedef int git_writestream ;


 int GIT_ERROR_OS ;
 int git_error_set (int ,char*,int ) ;
 int p_write (int ,char const*,size_t) ;

__attribute__((used)) static int checkout_stream_write(
 git_writestream *s, const char *buffer, size_t len)
{
 struct checkout_stream *stream = (struct checkout_stream *)s;
 int ret;

 if ((ret = p_write(stream->fd, buffer, len)) < 0)
  git_error_set(GIT_ERROR_OS, "could not write to '%s'", stream->path);

 return ret;
}
