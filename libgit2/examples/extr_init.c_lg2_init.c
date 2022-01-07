
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct opts {int member_0; char* dir; char* gitdir; scalar_t__ shared; scalar_t__ initial_commit; scalar_t__ bare; int quiet; scalar_t__ template; scalar_t__ no_options; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_4__ {char* workdir_path; scalar_t__ mode; scalar_t__ template_path; int flags; } ;
typedef TYPE_1__ git_repository_init_options ;
typedef int git_repository ;


 int GIT_REPOSITORY_INIT_BARE ;
 int GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE ;
 int GIT_REPOSITORY_INIT_MKPATH ;
 TYPE_1__ GIT_REPOSITORY_INIT_OPTIONS_INIT ;
 int GIT_REPOSITORY_INIT_SHARED_UMASK ;
 int check_lg2 (int ,char*,int *) ;
 int create_initial_commit (int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int ) ;
 int git_repository_init_ext (int **,char*,TYPE_1__*) ;
 char* git_repository_path (int *) ;
 char* git_repository_workdir (int *) ;
 int parse_opts (struct opts*,int,char**) ;
 int printf (char*,...) ;

int lg2_init(git_repository *repo, int argc, char *argv[])
{
 struct opts o = { 1, 0, 0, 0, GIT_REPOSITORY_INIT_SHARED_UMASK, 0, 0, 0 };

 parse_opts(&o, argc, argv);



 if (o.no_options) {




  check_lg2(git_repository_init(&repo, o.dir, 0),
   "Could not initialize repository", ((void*)0));
 }
 else {




  git_repository_init_options initopts = GIT_REPOSITORY_INIT_OPTIONS_INIT;
  initopts.flags = GIT_REPOSITORY_INIT_MKPATH;

  if (o.bare)
   initopts.flags |= GIT_REPOSITORY_INIT_BARE;

  if (o.template) {
   initopts.flags |= GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE;
   initopts.template_path = o.template;
  }

  if (o.gitdir) {





   initopts.workdir_path = o.dir;
   o.dir = o.gitdir;
  }

  if (o.shared != 0)
   initopts.mode = o.shared;

  check_lg2(git_repository_init_ext(&repo, o.dir, &initopts),
    "Could not initialize repository", ((void*)0));
 }



 if (!o.quiet) {
  if (o.bare || o.gitdir)
   o.dir = git_repository_path(repo);
  else
   o.dir = git_repository_workdir(repo);

  printf("Initialized empty Git repository in %s\n", o.dir);
 }







 if (o.initial_commit) {
  create_initial_commit(repo);
  printf("Created empty initial commit\n");
 }

 git_repository_free(repo);

 return 0;
}
