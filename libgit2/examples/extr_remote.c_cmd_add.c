
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opts {int argc; char** argv; } ;
typedef int git_repository ;
typedef int git_remote ;
struct TYPE_2__ {int member_0; } ;


 int check_lg2 (int ,char*,int *) ;
 int git_remote_create (int **,int *,char*,char*) ;
 int usage (char*,int *) ;

__attribute__((used)) static int cmd_add(git_repository *repo, struct opts *o)
{
 char *name, *url;
 git_remote *remote = {0};

 if (o->argc != 2)
  usage("you need to specify a name and URL", ((void*)0));

 name = o->argv[0];
 url = o->argv[1];

 check_lg2(git_remote_create(&remote, repo, name, url),
   "could not create remote", ((void*)0));

 return 0;
}
