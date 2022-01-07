
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* init ) (int **,char const*,char const*) ;int member_0; } ;
typedef TYPE_1__ git_stream_registration ;
typedef int git_stream ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_NET ;
 int GIT_STREAM_STANDARD ;
 int assert (int ) ;
 int default_socket_stream_new (int **,char const*,char const*) ;
 int git_error_set (int ,char*) ;
 int git_stream_registry_lookup (TYPE_1__*,int ) ;

int git_socket_stream_new(
 git_stream **out,
 const char *host,
 const char *port)
{
 int (*init)(git_stream **, const char *, const char *) = ((void*)0);
 git_stream_registration custom = {0};
 int error;

 assert(out && host && port);

 if ((error = git_stream_registry_lookup(&custom, GIT_STREAM_STANDARD)) == 0)
  init = custom.init;
 else if (error == GIT_ENOTFOUND)
  init = default_socket_stream_new;
 else
  return error;

 if (!init) {
  git_error_set(GIT_ERROR_NET, "there is no socket stream available");
  return -1;
 }

 return init(out, host, port);
}
