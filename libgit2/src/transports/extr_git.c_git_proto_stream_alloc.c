
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int parent; } ;
typedef TYPE_1__ git_subtransport ;
struct TYPE_10__ {int free; int write; int read; int * subtransport; } ;
typedef TYPE_2__ git_smart_subtransport_stream ;
struct TYPE_11__ {char const* cmd; TYPE_2__ parent; int io; int url; } ;
typedef TYPE_3__ git_proto_stream ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_3__*) ;
 int GIT_ERROR_CHECK_VERSION (int ,int ,char*) ;
 int GIT_STREAM_VERSION ;
 TYPE_3__* git__calloc (int,int) ;
 int git__free (TYPE_3__*) ;
 int git__strdup (char const*) ;
 int git_proto_stream_free ;
 int git_proto_stream_read ;
 int git_proto_stream_write ;
 scalar_t__ git_socket_stream_new (int *,char const*,char const*) ;

__attribute__((used)) static int git_proto_stream_alloc(
 git_subtransport *t,
 const char *url,
 const char *cmd,
 const char *host,
 const char *port,
 git_smart_subtransport_stream **stream)
{
 git_proto_stream *s;

 if (!stream)
  return -1;

 s = git__calloc(1, sizeof(git_proto_stream));
 GIT_ERROR_CHECK_ALLOC(s);

 s->parent.subtransport = &t->parent;
 s->parent.read = git_proto_stream_read;
 s->parent.write = git_proto_stream_write;
 s->parent.free = git_proto_stream_free;

 s->cmd = cmd;
 s->url = git__strdup(url);

 if (!s->url) {
  git__free(s);
  return -1;
 }

 if ((git_socket_stream_new(&s->io, host, port)) < 0)
  return -1;

 GIT_ERROR_CHECK_VERSION(s->io, GIT_STREAM_VERSION, "git_stream");

 *stream = &s->parent;
 return 0;
}
