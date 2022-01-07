
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
typedef int git_stream ;
struct TYPE_2__ {int s; } ;
typedef TYPE_1__ git_socket_stream ;


 int net_set_error (char*) ;
 int p_recv (int ,void*,size_t,int ) ;

__attribute__((used)) static ssize_t socket_read(git_stream *stream, void *data, size_t len)
{
 ssize_t ret;
 git_socket_stream *st = (git_socket_stream *) stream;

 if ((ret = p_recv(st->s, data, len, 0)) < 0)
  net_set_error("error receiving socket data");

 return ret;
}
