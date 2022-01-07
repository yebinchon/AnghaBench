
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int proxy_opts; int custom_headers; int pb_parallelism; } ;
typedef TYPE_2__ git_push_options ;
struct TYPE_7__ {int * proxy; int * custom_headers; } ;
struct TYPE_9__ {TYPE_1__ connection; int pb_parallelism; } ;
typedef TYPE_3__ git_push ;


 int GIT_ERROR_CHECK_VERSION (TYPE_2__ const*,int ,char*) ;
 int GIT_PUSH_OPTIONS_VERSION ;

int git_push_set_options(git_push *push, const git_push_options *opts)
{
 if (!push || !opts)
  return -1;

 GIT_ERROR_CHECK_VERSION(opts, GIT_PUSH_OPTIONS_VERSION, "git_push_options");

 push->pb_parallelism = opts->pb_parallelism;
 push->connection.custom_headers = &opts->custom_headers;
 push->connection.proxy = &opts->proxy_opts;

 return 0;
}
