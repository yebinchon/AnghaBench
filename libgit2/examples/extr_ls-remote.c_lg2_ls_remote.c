
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int EXIT_FAILURE ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int use_remote (int *,char*) ;

int lg2_ls_remote(git_repository *repo, int argc, char **argv)
{
 int error;

 if (argc < 2) {
  fprintf(stderr, "usage: %s ls-remote <remote>\n", argv[-1]);
  return EXIT_FAILURE;
 }

 error = use_remote(repo, argv[1]);

 return error;
}
