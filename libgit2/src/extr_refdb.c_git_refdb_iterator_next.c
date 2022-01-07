
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* next ) (TYPE_2__**,TYPE_1__*) ;int db; } ;
typedef TYPE_1__ git_reference_iterator ;
struct TYPE_8__ {int db; } ;
typedef TYPE_2__ git_reference ;


 int GIT_REFCOUNT_INC (int ) ;
 int stub1 (TYPE_2__**,TYPE_1__*) ;

int git_refdb_iterator_next(git_reference **out, git_reference_iterator *iter)
{
 int error;

 if ((error = iter->next(out, iter)) < 0)
  return error;

 GIT_REFCOUNT_INC(iter->db);
 (*out)->db = iter->db;

 return 0;
}
