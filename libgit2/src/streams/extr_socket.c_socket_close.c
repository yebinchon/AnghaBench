
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_stream ;
struct TYPE_2__ {int s; } ;
typedef TYPE_1__ git_socket_stream ;


 int INVALID_SOCKET ;
 int close_socket (int ) ;

__attribute__((used)) static int socket_close(git_stream *stream)
{
 git_socket_stream *st = (git_socket_stream *) stream;
 int error;

 error = close_socket(st->s);
 st->s = INVALID_SOCKET;

 return error;
}
