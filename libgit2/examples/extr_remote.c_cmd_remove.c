
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {int argc; char** argv; } ;
typedef int git_repository ;


 int check_lg2 (int ,char*,char*) ;
 int git_remote_delete (int *,char*) ;
 int usage (char*,int *) ;

__attribute__((used)) static int cmd_remove(git_repository *repo, struct opts *o)
{
 char *name;

 if (o->argc != 1)
  usage("you need to specify a name", ((void*)0));

 name = o->argv[0];

 check_lg2(git_remote_delete(repo, name),
   "could not delete remote", name);

 return 0;
}
