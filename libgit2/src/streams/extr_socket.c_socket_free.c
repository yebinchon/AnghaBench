
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_stream ;
struct TYPE_3__ {struct TYPE_3__* port; struct TYPE_3__* host; } ;
typedef TYPE_1__ git_socket_stream ;


 int git__free (TYPE_1__*) ;

__attribute__((used)) static void socket_free(git_stream *stream)
{
 git_socket_stream *st = (git_socket_stream *) stream;

 git__free(st->host);
 git__free(st->port);
 git__free(st);
}
