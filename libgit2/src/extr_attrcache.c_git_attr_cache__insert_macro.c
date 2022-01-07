
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_12__ {int pattern; } ;
struct TYPE_13__ {scalar_t__ length; } ;
struct TYPE_14__ {TYPE_1__ match; TYPE_2__ assigns; } ;
typedef TYPE_3__ git_attr_rule ;
struct TYPE_15__ {int macros; } ;
typedef TYPE_4__ git_attr_cache ;


 int attr_cache_lock (TYPE_4__*) ;
 int attr_cache_unlock (TYPE_4__*) ;
 int git_attr_rule__free (TYPE_3__*) ;
 TYPE_4__* git_repository_attr_cache (int *) ;
 TYPE_3__* git_strmap_get (int ,int ) ;
 int git_strmap_set (int ,int ,TYPE_3__*) ;

int git_attr_cache__insert_macro(git_repository *repo, git_attr_rule *macro)
{
 git_attr_cache *cache = git_repository_attr_cache(repo);
 git_attr_rule *preexisting;
 bool locked = 0;
 int error = 0;
 if (macro->assigns.length == 0) {
  git_attr_rule__free(macro);
  goto out;
 }

 if ((error = attr_cache_lock(cache)) < 0)
  goto out;
 locked = 1;

 if ((preexisting = git_strmap_get(cache->macros, macro->match.pattern)) != ((void*)0))
     git_attr_rule__free(preexisting);

 if ((error = git_strmap_set(cache->macros, macro->match.pattern, macro)) < 0)
     goto out;

out:
 if (locked)
  attr_cache_unlock(cache);
 return error;
}
