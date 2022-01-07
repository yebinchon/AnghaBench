
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int payload; struct TYPE_9__* name; } ;
typedef TYPE_1__ transaction_node ;
struct TYPE_10__ {int db; int locks; int pool; } ;
typedef TYPE_2__ git_transaction ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__* git_pool_mallocz (int *,int) ;
 TYPE_1__* git_pool_strdup (int *,char const*) ;
 int git_refdb_lock (int *,int ,char const*) ;
 int git_refdb_unlock (int ,int ,int,int,int *,int *,int *) ;
 int git_strmap_set (int ,TYPE_1__*,TYPE_1__*) ;

int git_transaction_lock_ref(git_transaction *tx, const char *refname)
{
 int error;
 transaction_node *node;

 assert(tx && refname);

 node = git_pool_mallocz(&tx->pool, sizeof(transaction_node));
 GIT_ERROR_CHECK_ALLOC(node);

 node->name = git_pool_strdup(&tx->pool, refname);
 GIT_ERROR_CHECK_ALLOC(node->name);

 if ((error = git_refdb_lock(&node->payload, tx->db, refname)) < 0)
  return error;

 if ((error = git_strmap_set(tx->locks, node->name, node)) < 0)
  goto cleanup;

 return 0;

cleanup:
 git_refdb_unlock(tx->db, node->payload, 0, 0, ((void*)0), ((void*)0), ((void*)0));

 return error;
}
