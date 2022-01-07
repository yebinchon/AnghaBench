
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int next; int free; } ;
struct TYPE_11__ {int have_regex; TYPE_1__ parent; TYPE_3__* iter; int regex; int name; } ;
typedef TYPE_2__ multivar_iter ;
struct TYPE_12__ {int (* free ) (TYPE_3__*) ;} ;
typedef TYPE_3__ git_config_iterator ;
typedef int git_config ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 TYPE_2__* git__calloc (int,int) ;
 int git__free (TYPE_2__*) ;
 int git_config__normalize_name (char const*,int *) ;
 int git_config_iterator_new (TYPE_3__**,int const*) ;
 int git_regexp_compile (int *,char const*,int ) ;
 int multivar_iter_free ;
 int multivar_iter_next ;
 int stub1 (TYPE_3__*) ;

int git_config_multivar_iterator_new(git_config_iterator **out, const git_config *cfg, const char *name, const char *regexp)
{
 multivar_iter *iter = ((void*)0);
 git_config_iterator *inner = ((void*)0);
 int error;

 if ((error = git_config_iterator_new(&inner, cfg)) < 0)
  return error;

 iter = git__calloc(1, sizeof(multivar_iter));
 GIT_ERROR_CHECK_ALLOC(iter);

 if ((error = git_config__normalize_name(name, &iter->name)) < 0)
  goto on_error;

 if (regexp != ((void*)0)) {
  if ((error = git_regexp_compile(&iter->regex, regexp, 0)) < 0)
   goto on_error;

  iter->have_regex = 1;
 }

 iter->iter = inner;
 iter->parent.free = multivar_iter_free;
 iter->parent.next = multivar_iter_next;

 *out = (git_config_iterator *) iter;

 return 0;

on_error:

 inner->free(inner);
 git__free(iter);
 return error;
}
