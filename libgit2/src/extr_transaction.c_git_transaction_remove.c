
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int remove; int ref_type; } ;
typedef TYPE_1__ transaction_node ;
typedef int git_transaction ;


 int GIT_REFERENCE_DIRECT ;
 int find_locked (TYPE_1__**,int *,char const*) ;

int git_transaction_remove(git_transaction *tx, const char *refname)
{
 int error;
 transaction_node *node;

 if ((error = find_locked(&node, tx, refname)) < 0)
  return error;

 node->remove = 1;
 node->ref_type = GIT_REFERENCE_DIRECT;

 return 0;
}
