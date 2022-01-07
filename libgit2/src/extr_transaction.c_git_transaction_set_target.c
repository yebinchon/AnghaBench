
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct TYPE_6__ {int ref_type; TYPE_1__ target; } ;
typedef TYPE_2__ transaction_node ;
typedef int git_transaction ;
typedef int git_signature ;
typedef int git_oid ;


 int GIT_REFERENCE_DIRECT ;
 int assert (int ) ;
 int copy_common (TYPE_2__*,int *,int const*,char const*) ;
 int find_locked (TYPE_2__**,int *,char const*) ;
 int git_oid_cpy (int *,int const*) ;

int git_transaction_set_target(git_transaction *tx, const char *refname, const git_oid *target, const git_signature *sig, const char *msg)
{
 int error;
 transaction_node *node;

 assert(tx && refname && target);

 if ((error = find_locked(&node, tx, refname)) < 0)
  return error;

 if ((error = copy_common(node, tx, sig, msg)) < 0)
  return error;

 git_oid_cpy(&node->target.id, target);
 node->ref_type = GIT_REFERENCE_DIRECT;

 return 0;
}
