
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct opts {int argc; char** argv; } ;
struct TYPE_4__ {int * strings; scalar_t__ count; int member_0; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;


 int git_remote_rename (TYPE_1__*,int *,char*,char*) ;
 int git_strarray_free (TYPE_1__*) ;
 int puts (int ) ;
 int usage (char*,int *) ;

__attribute__((used)) static int cmd_rename(git_repository *repo, struct opts *o)
{
 int i, retval;
 char *old, *new;
 git_strarray problems = {0};

 if (o->argc != 2)
  usage("you need to specify old and new remote name", ((void*)0));

 old = o->argv[0];
 new = o->argv[1];

 retval = git_remote_rename(&problems, repo, old, new);
 if (!retval)
  return 0;

 for (i = 0; i < (int) problems.count; i++) {
  puts(problems.strings[0]);
 }

 git_strarray_free(&problems);

 return retval;
}
