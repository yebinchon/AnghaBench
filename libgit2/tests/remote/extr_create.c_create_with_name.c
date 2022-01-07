
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {char const* name; int * repository; } ;
typedef TYPE_1__ git_remote_create_options ;
typedef int git_remote ;


 TYPE_1__ GIT_REMOTE_CREATE_OPTIONS_INIT ;
 int git_remote_create_with_opts (int **,char const*,TYPE_1__*) ;

__attribute__((used)) static int create_with_name(git_remote **remote, git_repository *repo, const char *name, const char *url)
{
 git_remote_create_options opts = GIT_REMOTE_CREATE_OPTIONS_INIT;

 opts.repository = repo;
 opts.name = name;

 return git_remote_create_with_opts(remote, url, &opts);
}
