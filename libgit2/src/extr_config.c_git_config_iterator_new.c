
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_config_iterator ;
struct TYPE_9__ {int length; } ;
struct TYPE_10__ {TYPE_2__ backends; } ;
typedef TYPE_3__ git_config ;
struct TYPE_8__ {int next; int free; } ;
struct TYPE_11__ {TYPE_3__ const* cfg; int i; TYPE_1__ parent; } ;
typedef TYPE_4__ all_iter ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_4__*) ;
 int all_iter_free ;
 int all_iter_next ;
 TYPE_4__* git__calloc (int,int) ;

int git_config_iterator_new(git_config_iterator **out, const git_config *cfg)
{
 all_iter *iter;

 iter = git__calloc(1, sizeof(all_iter));
 GIT_ERROR_CHECK_ALLOC(iter);

 iter->parent.free = all_iter_free;
 iter->parent.next = all_iter_next;

 iter->i = cfg->backends.length;
 iter->cfg = cfg;

 *out = (git_config_iterator *) iter;

 return 0;
}
