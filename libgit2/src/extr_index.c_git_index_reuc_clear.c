
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t length; int * contents; } ;
struct TYPE_5__ {int dirty; TYPE_2__ reuc; } ;
typedef TYPE_1__ git_index ;


 int assert (TYPE_1__*) ;
 int git__swap (int ,int *) ;
 int git_vector_clear (TYPE_2__*) ;
 int index_entry_reuc_free (int ) ;

void git_index_reuc_clear(git_index *index)
{
 size_t i;

 assert(index);

 for (i = 0; i < index->reuc.length; ++i)
  index_entry_reuc_free(git__swap(index->reuc.contents[i], ((void*)0)));

 git_vector_clear(&index->reuc);

 index->dirty = 1;
}
