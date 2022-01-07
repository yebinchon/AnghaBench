
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct args_info {int pos; int argc; char** argv; } ;
typedef int git_repository ;
struct TYPE_3__ {char* name; int fn; scalar_t__ requires_repo; } ;


 struct args_info ARGS_INFO_INIT ;
 size_t ARRAY_SIZE (TYPE_1__*) ;
 int check_lg2 (int ,char*,char const*) ;
 TYPE_1__* commands ;
 int fprintf (int ,char*,char*) ;
 int git_libgit2_init () ;
 int git_libgit2_shutdown () ;
 int git_repository_free (int *) ;
 int git_repository_open_ext (int **,char const*,int ,int *) ;
 scalar_t__ optional_str_arg (char const**,struct args_info*,char*,char*) ;
 int run_command (int ,int *,struct args_info) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int usage (char*) ;

int main(int argc, char **argv)
{
 struct args_info args = ARGS_INFO_INIT;
 git_repository *repo = ((void*)0);
 const char *git_dir = ((void*)0);
 int return_code = 1;
 size_t i;

 if (argc < 2)
  usage(argv[0]);

 git_libgit2_init();

 for (args.pos = 1; args.pos < args.argc; ++args.pos) {
  char *a = args.argv[args.pos];

  if (a[0] != '-') {

   break;
  } else if (optional_str_arg(&git_dir, &args, "--git-dir", ".git")) {
   continue;
  } else if (!strcmp(a, "--")) {

   break;
  }
 }

 if (args.pos == args.argc)
  usage(argv[0]);

 if (!git_dir)
  git_dir = ".";

 for (i = 0; i < ARRAY_SIZE(commands); ++i) {
  if (strcmp(args.argv[args.pos], commands[i].name))
   continue;





  if (commands[i].requires_repo) {
   check_lg2(git_repository_open_ext(&repo, git_dir, 0, ((void*)0)),
      "Unable to open repository '%s'", git_dir);
  }

  return_code = run_command(commands[i].fn, repo, args);
  goto shutdown;
 }

 fprintf(stderr, "Command not found: %s\n", argv[1]);

shutdown:
 git_repository_free(repo);
 git_libgit2_shutdown();

 return return_code;
}
