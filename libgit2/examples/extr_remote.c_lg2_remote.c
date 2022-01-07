
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {int cmd; int member_0; } ;
typedef int git_repository ;


 int cmd_add (int *,struct opts*) ;
 int cmd_remove (int *,struct opts*) ;
 int cmd_rename (int *,struct opts*) ;
 int cmd_seturl (int *,struct opts*) ;
 int cmd_show (int *,struct opts*) ;
 int parse_subcmd (struct opts*,int,char**) ;






int lg2_remote(git_repository *repo, int argc, char *argv[])
{
 int retval = 0;
 struct opts opt = {0};

 parse_subcmd(&opt, argc, argv);

 switch (opt.cmd)
 {
 case 132:
  retval = cmd_add(repo, &opt);
  break;
 case 131:
  retval = cmd_remove(repo, &opt);
  break;
 case 130:
  retval = cmd_rename(repo, &opt);
  break;
 case 129:
  retval = cmd_seturl(repo, &opt);
  break;
 case 128:
  retval = cmd_show(repo, &opt);
  break;
 }

 return retval;
}
