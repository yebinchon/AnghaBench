
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_repository_init_options ;
typedef int git_repository ;


 int GIT_REPOSITORY_INIT_BARE ;
 int GIT_REPOSITORY_INIT_MKPATH ;
 TYPE_1__ GIT_REPOSITORY_INIT_OPTIONS_INIT ;
 int git_repository_init_ext (int **,char const*,TYPE_1__*) ;

int git_repository_init(
 git_repository **repo_out, const char *path, unsigned is_bare)
{
 git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;

 opts.flags = GIT_REPOSITORY_INIT_MKPATH;
 if (is_bare)
  opts.flags |= GIT_REPOSITORY_INIT_BARE;

 return git_repository_init_ext(repo_out, path, &opts);
}
