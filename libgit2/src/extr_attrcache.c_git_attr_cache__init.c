
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int attrcache; } ;
typedef TYPE_1__ git_repository ;
typedef int git_config ;
struct TYPE_15__ {int pool; int macros; int files; int cfg_excl_file; int cfg_attr_file; int lock; } ;
typedef TYPE_2__ git_attr_cache ;


 int GIT_ATTR_CONFIG ;
 int GIT_ATTR_FILE_XDG ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_ERROR_OS ;
 int GIT_IGNORE_CONFIG ;
 int GIT_IGNORE_FILE_XDG ;
 int attr_cache__free (TYPE_2__*) ;
 int attr_cache__lookup_path (int *,int *,int ,int ) ;
 TYPE_2__* git__calloc (int,int) ;
 TYPE_2__* git__compare_and_swap (int *,int *,TYPE_2__*) ;
 int git__free (TYPE_2__*) ;
 int git_attr_add_macro (TYPE_1__*,char*,char*) ;
 int git_config_free (int *) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_mutex_init (int *) ;
 int git_pool_init (int *,int) ;
 TYPE_2__* git_repository_attr_cache (TYPE_1__*) ;
 int git_repository_config_snapshot (int **,TYPE_1__*) ;
 int git_strmap_new (int *) ;

int git_attr_cache__init(git_repository *repo)
{
 int ret = 0;
 git_attr_cache *cache = git_repository_attr_cache(repo);
 git_config *cfg = ((void*)0);

 if (cache)
  return 0;

 cache = git__calloc(1, sizeof(git_attr_cache));
 GIT_ERROR_CHECK_ALLOC(cache);


 if (git_mutex_init(&cache->lock) < 0) {
  git_error_set(GIT_ERROR_OS, "unable to initialize lock for attr cache");
  git__free(cache);
  return -1;
 }

 if ((ret = git_repository_config_snapshot(&cfg, repo)) < 0)
  goto cancel;


 ret = attr_cache__lookup_path(
  &cache->cfg_attr_file, cfg, GIT_ATTR_CONFIG, GIT_ATTR_FILE_XDG);
 if (ret < 0)
  goto cancel;

 ret = attr_cache__lookup_path(
  &cache->cfg_excl_file, cfg, GIT_IGNORE_CONFIG, GIT_IGNORE_FILE_XDG);
 if (ret < 0)
  goto cancel;




 if ((ret = git_strmap_new(&cache->files)) < 0 ||
     (ret = git_strmap_new(&cache->macros)) < 0)
  goto cancel;

 git_pool_init(&cache->pool, 1);

 cache = git__compare_and_swap(&repo->attrcache, ((void*)0), cache);
 if (cache)
  goto cancel;

 git_config_free(cfg);


 return git_attr_add_macro(repo, "binary", "-diff -crlf -text");

cancel:
 attr_cache__free(cache);
 git_config_free(cfg);
 return ret;
}
