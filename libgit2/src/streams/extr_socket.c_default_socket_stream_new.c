
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_stream ;
struct TYPE_5__ {int free; int close; int read; int write; int connect; int version; } ;
struct TYPE_6__ {int s; TYPE_1__ parent; struct TYPE_6__* port; struct TYPE_6__* host; } ;
typedef TYPE_2__ git_socket_stream ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_STREAM_VERSION ;
 int INVALID_SOCKET ;
 int assert (int ) ;
 TYPE_2__* git__calloc (int,int) ;
 void* git__strdup (char const*) ;
 int socket_close ;
 int socket_connect ;
 int socket_free ;
 int socket_read ;
 int socket_write ;

__attribute__((used)) static int default_socket_stream_new(
 git_stream **out,
 const char *host,
 const char *port)
{
 git_socket_stream *st;

 assert(out && host && port);

 st = git__calloc(1, sizeof(git_socket_stream));
 GIT_ERROR_CHECK_ALLOC(st);

 st->host = git__strdup(host);
 GIT_ERROR_CHECK_ALLOC(st->host);

 if (port) {
  st->port = git__strdup(port);
  GIT_ERROR_CHECK_ALLOC(st->port);
 }

 st->parent.version = GIT_STREAM_VERSION;
 st->parent.connect = socket_connect;
 st->parent.write = socket_write;
 st->parent.read = socket_read;
 st->parent.close = socket_close;
 st->parent.free = socket_free;
 st->s = INVALID_SOCKET;

 *out = (git_stream *) st;
 return 0;
}
