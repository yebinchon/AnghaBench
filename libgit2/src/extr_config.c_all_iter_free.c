
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_config_iterator ;
struct TYPE_4__ {TYPE_2__* current; } ;
typedef TYPE_1__ all_iter ;
struct TYPE_5__ {int (* free ) (TYPE_2__*) ;} ;


 int git__free (TYPE_1__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void all_iter_free(git_config_iterator *_iter)
{
 all_iter *iter = (all_iter *) _iter;

 if (iter->current)
  iter->current->free(iter->current);

 git__free(iter);
}
