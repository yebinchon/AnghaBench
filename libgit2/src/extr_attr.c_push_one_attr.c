
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_attr_file_source ;
struct TYPE_2__ {int files; int attr_session; int repo; int * workdir; int * index; int flags; } ;
typedef TYPE_1__ attr_walk_up_info ;


 int GIT_ATTR_FILE ;
 int GIT_ATTR_FILE_NUM_SOURCES ;
 int attr_decide_sources (int ,int ,int ,int *) ;
 int push_attr_file (int ,int ,int ,int ,char const*,int ,int) ;
 int strcmp (int *,char const*) ;

__attribute__((used)) static int push_one_attr(void *ref, const char *path)
{
 attr_walk_up_info *info = (attr_walk_up_info *)ref;
 git_attr_file_source src[GIT_ATTR_FILE_NUM_SOURCES];
 int error = 0, n_src, i;
 bool allow_macros;

 n_src = attr_decide_sources(
  info->flags, info->workdir != ((void*)0), info->index != ((void*)0), src);
 allow_macros = info->workdir ? !strcmp(info->workdir, path) : 0;

 for (i = 0; !error && i < n_src; ++i)
  error = push_attr_file(info->repo, info->attr_session, info->files,
           src[i], path, GIT_ATTR_FILE, allow_macros);

 return error;
}
