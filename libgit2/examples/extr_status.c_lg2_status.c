
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int show; } ;
struct opts {char* member_1; scalar_t__ format; scalar_t__ repeat; int * repodir; scalar_t__ showsubmod; scalar_t__ showbranch; TYPE_1__ statusopt; int member_0; } ;
typedef int git_status_list ;
typedef int git_repository ;


 scalar_t__ FORMAT_LONG ;
 int GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX ;
 int GIT_STATUS_OPT_SORT_CASE_SENSITIVELY ;
 int GIT_STATUS_SHOW_INDEX_AND_WORKDIR ;
 int check_lg2 (int ,char*,int *) ;
 int fatal (char*,int ) ;
 scalar_t__ git_repository_is_bare (int *) ;
 int git_repository_path (int *) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int *,TYPE_1__*) ;
 int git_submodule_foreach (int *,int ,int*) ;
 int parse_opts (struct opts*,int,char**) ;
 int print_long (int *) ;
 int print_short (int *,int *) ;
 int print_submod ;
 int printf (char*) ;
 int show_branch (int *,scalar_t__) ;
 int sleep (scalar_t__) ;

int lg2_status(git_repository *repo, int argc, char *argv[])
{
 git_status_list *status;
 struct opts o = { GIT_STATUS_OPTIONS_INIT, "." };

 o.statusopt.show = GIT_STATUS_SHOW_INDEX_AND_WORKDIR;
 o.statusopt.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
  GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX |
  GIT_STATUS_OPT_SORT_CASE_SENSITIVELY;

 parse_opts(&o, argc, argv);

 if (git_repository_is_bare(repo))
  fatal("Cannot report status on bare repository",
   git_repository_path(repo));

show_status:
 if (o.repeat)
  printf("\033[H\033[2J");
 check_lg2(git_status_list_new(&status, repo, &o.statusopt),
  "Could not get status", ((void*)0));

 if (o.showbranch)
  show_branch(repo, o.format);

 if (o.showsubmod) {
  int submod_count = 0;
  check_lg2(git_submodule_foreach(repo, print_submod, &submod_count),
   "Cannot iterate submodules", o.repodir);
 }

 if (o.format == FORMAT_LONG)
  print_long(status);
 else
  print_short(repo, status);

 git_status_list_free(status);

 if (o.repeat) {
  sleep(o.repeat);
  goto show_status;
 }

 return 0;
}
