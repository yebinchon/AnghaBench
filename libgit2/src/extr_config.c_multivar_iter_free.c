
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int regex; scalar_t__ have_regex; struct TYPE_4__* name; TYPE_2__* iter; } ;
typedef TYPE_1__ multivar_iter ;
typedef int git_config_iterator ;
struct TYPE_5__ {int (* free ) (TYPE_2__*) ;} ;


 int git__free (TYPE_1__*) ;
 int git_regexp_dispose (int *) ;
 int stub1 (TYPE_2__*) ;

void multivar_iter_free(git_config_iterator *_iter)
{
 multivar_iter *iter = (multivar_iter *) _iter;

 iter->iter->free(iter->iter);

 git__free(iter->name);
 if (iter->have_regex)
  git_regexp_dispose(&iter->regex);
 git__free(iter);
}
