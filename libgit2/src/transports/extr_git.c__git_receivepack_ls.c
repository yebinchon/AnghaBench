
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* current_stream; } ;
typedef TYPE_1__ git_subtransport ;
typedef int git_smart_subtransport_stream ;
struct TYPE_10__ {int io; } ;
typedef TYPE_2__ git_proto_stream ;
struct TYPE_11__ {int port; int host; } ;
typedef TYPE_3__ git_net_url ;


 TYPE_3__ GIT_NET_URL_INIT ;
 int cmd_receivepack ;
 int git__prefixcmp (char const*,int ) ;
 int git_net_url_dispose (TYPE_3__*) ;
 int git_net_url_parse (TYPE_3__*,char const*) ;
 int git_proto_stream_alloc (TYPE_1__*,char const*,int ,int ,int ,int **) ;
 int git_proto_stream_free (int *) ;
 int git_stream_connect (int ) ;
 int prefix_git ;
 int strlen (int ) ;

__attribute__((used)) static int _git_receivepack_ls(
 git_subtransport *t,
 const char *url,
 git_smart_subtransport_stream **stream)
{
 git_net_url urldata = GIT_NET_URL_INIT;
 const char *stream_url = url;
 git_proto_stream *s;
 int error;

 *stream = ((void*)0);
 if (!git__prefixcmp(url, prefix_git))
  stream_url += strlen(prefix_git);

 if ((error = git_net_url_parse(&urldata, url)) < 0)
  return error;

 error = git_proto_stream_alloc(t, stream_url, cmd_receivepack, urldata.host, urldata.port, stream);

 git_net_url_dispose(&urldata);

 if (error < 0) {
  git_proto_stream_free(*stream);
  return error;
 }

 s = (git_proto_stream *) *stream;

 if ((error = git_stream_connect(s->io)) < 0)
  return error;

 t->current_stream = s;

 return 0;
}
