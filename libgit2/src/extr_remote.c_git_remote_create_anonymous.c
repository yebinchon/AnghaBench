
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int * repository; } ;
typedef TYPE_1__ git_remote_create_options ;
typedef int git_remote ;


 TYPE_1__ GIT_REMOTE_CREATE_OPTIONS_INIT ;
 int git_remote_create_with_opts (int **,char const*,TYPE_1__*) ;

int git_remote_create_anonymous(git_remote **out, git_repository *repo, const char *url)
{
 git_remote_create_options opts = GIT_REMOTE_CREATE_OPTIONS_INIT;

 opts.repository = repo;

 return git_remote_create_with_opts(out, url, &opts);
}
