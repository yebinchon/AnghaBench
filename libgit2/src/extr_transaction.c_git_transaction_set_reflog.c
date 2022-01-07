
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int reflog; } ;
typedef TYPE_1__ transaction_node ;
struct TYPE_7__ {int pool; } ;
typedef TYPE_2__ git_transaction ;
typedef int git_reflog ;


 int assert (int ) ;
 int dup_reflog (int *,int const*,int *) ;
 int find_locked (TYPE_1__**,TYPE_2__*,char const*) ;

int git_transaction_set_reflog(git_transaction *tx, const char *refname, const git_reflog *reflog)
{
 int error;
 transaction_node *node;

 assert(tx && refname && reflog);

 if ((error = find_locked(&node, tx, refname)) < 0)
  return error;

 if ((error = dup_reflog(&node->reflog, reflog, &tx->pool)) < 0)
  return error;

 return 0;
}
