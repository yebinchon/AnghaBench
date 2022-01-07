
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_repository ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_filter_options ;
typedef int git_filter_mode_t ;
typedef int git_filter_list ;
typedef int git_blob ;


 TYPE_1__ GIT_FILTER_OPTIONS_INIT ;
 int git_filter_list__load_ext (int **,int *,int *,char const*,int ,TYPE_1__*) ;

int git_filter_list_load(
 git_filter_list **filters,
 git_repository *repo,
 git_blob *blob,
 const char *path,
 git_filter_mode_t mode,
 uint32_t flags)
{
 git_filter_options filter_opts = GIT_FILTER_OPTIONS_INIT;

 filter_opts.flags = flags;

 return git_filter_list__load_ext(
  filters, repo, blob, path, mode, &filter_opts);
}
