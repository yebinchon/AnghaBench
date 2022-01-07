
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_config_iterator ;
struct TYPE_11__ {int length; } ;
struct TYPE_12__ {TYPE_2__ backends; } ;
typedef TYPE_3__ git_config ;
struct TYPE_10__ {int free; int next; } ;
struct TYPE_13__ {TYPE_3__ const* cfg; int i; TYPE_1__ parent; int regex; } ;
typedef TYPE_4__ all_iter ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_4__*) ;
 int all_iter_glob_free ;
 int all_iter_glob_next ;
 TYPE_4__* git__calloc (int,int) ;
 int git__free (TYPE_4__*) ;
 int git_config_iterator_new (int **,TYPE_3__ const*) ;
 int git_regexp_compile (int *,char const*,int ) ;

int git_config_iterator_glob_new(git_config_iterator **out, const git_config *cfg, const char *regexp)
{
 all_iter *iter;
 int result;

 if (regexp == ((void*)0))
  return git_config_iterator_new(out, cfg);

 iter = git__calloc(1, sizeof(all_iter));
 GIT_ERROR_CHECK_ALLOC(iter);

 if ((result = git_regexp_compile(&iter->regex, regexp, 0)) < 0) {
  git__free(iter);
  return -1;
 }

 iter->parent.next = all_iter_glob_next;
 iter->parent.free = all_iter_glob_free;
 iter->i = cfg->backends.length;
 iter->cfg = cfg;

 *out = (git_config_iterator *) iter;

 return 0;
}
