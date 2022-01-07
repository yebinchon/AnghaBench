
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {int skip_tree; scalar_t__ next_idx; TYPE_1__ base; } ;
typedef TYPE_2__ index_iterator ;


 int GIT_ITERATOR_FIRST_ACCESS ;

__attribute__((used)) static int index_iterator_init(index_iterator *iter)
{
 iter->base.flags &= ~GIT_ITERATOR_FIRST_ACCESS;
 iter->next_idx = 0;
 iter->skip_tree = 0;
 return 0;
}
