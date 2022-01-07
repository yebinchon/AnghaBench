
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {int cmd; int member_0; } ;
typedef int git_repository ;






 int cmd_apply (int *,struct opts*) ;
 int cmd_list (int *,struct opts*) ;
 int cmd_pop (int *,struct opts*) ;
 int cmd_push (int *,struct opts*) ;
 int parse_subcommand (struct opts*,int,char**) ;

int lg2_stash(git_repository *repo, int argc, char *argv[])
{
 struct opts opts = { 0 };

 parse_subcommand(&opts, argc, argv);

 switch (opts.cmd) {
  case 131:
   return cmd_apply(repo, &opts);
  case 130:
   return cmd_list(repo, &opts);
  case 128:
   return cmd_push(repo, &opts);
  case 129:
   return cmd_pop(repo, &opts);
 }

 return -1;
}
