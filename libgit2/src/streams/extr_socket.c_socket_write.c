
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
typedef int git_stream ;
struct TYPE_2__ {int s; } ;
typedef TYPE_1__ git_socket_stream ;


 scalar_t__ errno ;
 int net_set_error (char*) ;
 int p_send (int ,char const*,size_t,int) ;

__attribute__((used)) static ssize_t socket_write(git_stream *stream, const char *data, size_t len, int flags)
{
 git_socket_stream *st = (git_socket_stream *) stream;
 ssize_t written;

 errno = 0;

 if ((written = p_send(st->s, data, len, flags)) < 0) {
  net_set_error("error sending data");
  return -1;
 }

 return written;
}
