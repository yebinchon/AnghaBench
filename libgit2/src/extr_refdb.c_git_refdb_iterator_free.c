
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* free ) (TYPE_1__*) ;int db; } ;
typedef TYPE_1__ git_reference_iterator ;


 int GIT_REFCOUNT_DEC (int ,int ) ;
 int git_refdb__free ;
 int stub1 (TYPE_1__*) ;

void git_refdb_iterator_free(git_reference_iterator *iter)
{
 GIT_REFCOUNT_DEC(iter->db, git_refdb__free);
 iter->free(iter);
}
