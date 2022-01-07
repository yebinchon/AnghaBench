
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_8__ {char** strings; size_t count; } ;
struct TYPE_10__ {TYPE_1__ pathspec; } ;
typedef TYPE_3__ git_diff_options ;
struct TYPE_9__ {int path; } ;
struct TYPE_11__ {TYPE_2__ new_file; } ;
typedef TYPE_4__ git_diff_delta ;
typedef int git_diff ;


 TYPE_3__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (size_t,int ) ;
 int cl_assert_equal_strn (char*,int ,size_t) ;
 int git_diff_free (int *) ;
 TYPE_4__* git_diff_get_delta (int *,size_t) ;
 int git_diff_index_to_workdir (int **,int *,int *,TYPE_3__*) ;
 int git_diff_num_deltas (int *) ;
 size_t strlen (char*) ;

__attribute__((used)) static void ensure_submodules_found(
 git_repository *repo,
 const char **paths,
 size_t cnt)
{
 git_diff *diff = ((void*)0);
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 const git_diff_delta *delta;
 size_t i, pathlen;

 opts.pathspec.strings = (char **)paths;
 opts.pathspec.count = cnt;

 git_diff_index_to_workdir(&diff, repo, ((void*)0), &opts);

 cl_assert_equal_i(cnt, git_diff_num_deltas(diff));

 for (i = 0; i < cnt; i++) {
  delta = git_diff_get_delta(diff, i);


  pathlen = strlen(opts.pathspec.strings[i]);

  while (pathlen && opts.pathspec.strings[i][pathlen - 1] == '/')
   pathlen--;

  cl_assert_equal_strn(opts.pathspec.strings[i], delta->new_file.path, pathlen);
 }

 git_diff_free(diff);
}
