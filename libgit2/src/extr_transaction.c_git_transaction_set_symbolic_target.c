
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int symbolic; } ;
struct TYPE_10__ {int ref_type; TYPE_1__ target; } ;
typedef TYPE_2__ transaction_node ;
struct TYPE_11__ {int pool; } ;
typedef TYPE_3__ git_transaction ;
typedef int git_signature ;


 int GIT_ERROR_CHECK_ALLOC (int ) ;
 int GIT_REFERENCE_SYMBOLIC ;
 int assert (int ) ;
 int copy_common (TYPE_2__*,TYPE_3__*,int const*,char const*) ;
 int find_locked (TYPE_2__**,TYPE_3__*,char const*) ;
 int git_pool_strdup (int *,char const*) ;

int git_transaction_set_symbolic_target(git_transaction *tx, const char *refname, const char *target, const git_signature *sig, const char *msg)
{
 int error;
 transaction_node *node;

 assert(tx && refname && target);

 if ((error = find_locked(&node, tx, refname)) < 0)
  return error;

 if ((error = copy_common(node, tx, sig, msg)) < 0)
  return error;

 node->target.symbolic = git_pool_strdup(&tx->pool, target);
 GIT_ERROR_CHECK_ALLOC(node->target.symbolic);
 node->ref_type = GIT_REFERENCE_SYMBOLIC;

 return 0;
}
