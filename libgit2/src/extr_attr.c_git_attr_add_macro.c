
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_pool ;
struct TYPE_10__ {int flags; TYPE_2__* pattern; int length; } ;
struct TYPE_11__ {int assigns; TYPE_1__ match; } ;
typedef TYPE_2__ git_attr_rule ;
struct TYPE_12__ {int pool; } ;


 int GIT_ATTR_FNMATCH_MACRO ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 TYPE_2__* git__calloc (int,int) ;
 int git_attr_assignment__parse (int *,int *,int *,char const**) ;
 int git_attr_cache__init (int *) ;
 int git_attr_cache__insert_macro (int *,TYPE_2__*) ;
 int git_attr_rule__free (TYPE_2__*) ;
 TYPE_2__* git_pool_strdup (int *,char const*) ;
 TYPE_4__* git_repository_attr_cache (int *) ;
 int strlen (TYPE_2__*) ;

int git_attr_add_macro(
 git_repository *repo,
 const char *name,
 const char *values)
{
 int error;
 git_attr_rule *macro = ((void*)0);
 git_pool *pool;

 if ((error = git_attr_cache__init(repo)) < 0)
  return error;

 macro = git__calloc(1, sizeof(git_attr_rule));
 GIT_ERROR_CHECK_ALLOC(macro);

 pool = &git_repository_attr_cache(repo)->pool;

 macro->match.pattern = git_pool_strdup(pool, name);
 GIT_ERROR_CHECK_ALLOC(macro->match.pattern);

 macro->match.length = strlen(macro->match.pattern);
 macro->match.flags = GIT_ATTR_FNMATCH_MACRO;

 error = git_attr_assignment__parse(repo, pool, &macro->assigns, &values);

 if (!error)
  error = git_attr_cache__insert_macro(repo, macro);

 if (error < 0)
  git_attr_rule__free(macro);

 return error;
}
