
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct opts {int argc; char** argv; } ;
struct TYPE_6__ {char** strings; scalar_t__ count; int member_0; } ;
typedef TYPE_2__ git_strarray ;
typedef int git_repository ;
typedef int git_remote ;
struct TYPE_5__ {int member_0; } ;


 int check_lg2 (int ,char*,char const*) ;
 int git_remote_free (int *) ;
 int git_remote_list (TYPE_2__*,int *) ;
 int git_remote_lookup (int **,int *,char const*) ;
 char* git_remote_pushurl (int *) ;
 char* git_remote_url (int *) ;
 int git_strarray_free (TYPE_2__*) ;
 int printf (char*,char const*,char const*) ;
 int puts (char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int cmd_show(git_repository *repo, struct opts *o)
{
 int i;
 const char *arg, *name, *fetch, *push;
 int verbose = 0;
 git_strarray remotes = {0};
 git_remote *remote = {0};

 for (i = 0; i < o->argc; i++) {
  arg = o->argv[i];

  if (!strcmp(arg, "-v") || !strcmp(arg, "--verbose")) {
   verbose = 1;
  }
 }

 check_lg2(git_remote_list(&remotes, repo),
  "could not retrieve remotes", ((void*)0));

 for (i = 0; i < (int) remotes.count; i++) {
  name = remotes.strings[i];
  if (!verbose) {
   puts(name);
   continue;
  }

  check_lg2(git_remote_lookup(&remote, repo, name),
   "could not look up remote", name);

  fetch = git_remote_url(remote);
  if (fetch)
   printf("%s\t%s (fetch)\n", name, fetch);
  push = git_remote_pushurl(remote);

  push = push ? push : fetch;
  if (push)
   printf("%s\t%s (push)\n", name, push);

  git_remote_free(remote);
 }

 git_strarray_free(&remotes);

 return 0;
}
