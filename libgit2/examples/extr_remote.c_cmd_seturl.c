
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opts {int argc; char** argv; } ;
typedef int git_repository ;


 int check_lg2 (int,char*,char*) ;
 int git_remote_set_pushurl (int *,char*,char*) ;
 int git_remote_set_url (int *,char*,char*) ;
 int strcmp (char*,char*) ;
 int usage (char*,char*) ;

__attribute__((used)) static int cmd_seturl(git_repository *repo, struct opts *o)
{
 int i, retval, push = 0;
 char *name = ((void*)0), *url = ((void*)0);

 for (i = 0; i < o->argc; i++) {
  char *arg = o->argv[i];

  if (!strcmp(arg, "--push")) {
   push = 1;
  } else if (arg[0] != '-' && name == ((void*)0)) {
   name = arg;
  } else if (arg[0] != '-' && url == ((void*)0)) {
   url = arg;
  } else {
   usage("invalid argument to set-url", arg);
  }
 }

 if (name == ((void*)0) || url == ((void*)0))
  usage("you need to specify remote and the new URL", ((void*)0));

 if (push)
  retval = git_remote_set_pushurl(repo, name, url);
 else
  retval = git_remote_set_url(repo, name, url);

 check_lg2(retval, "could not set URL", url);

 return 0;
}
