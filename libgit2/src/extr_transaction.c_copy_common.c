
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int message; int sig; } ;
typedef TYPE_1__ transaction_node ;
struct TYPE_6__ {int pool; int repo; } ;
typedef TYPE_2__ git_transaction ;
typedef int const git_signature ;


 int GIT_ERROR_CHECK_ALLOC (int ) ;
 int git_pool_strdup (int *,char const*) ;
 scalar_t__ git_reference__log_signature (int const**,int ) ;
 scalar_t__ git_signature__pdup (int *,int const*,int *) ;
 int git_signature_free (int const*) ;

__attribute__((used)) static int copy_common(transaction_node *node, git_transaction *tx, const git_signature *sig, const char *msg)
{
 if (sig && git_signature__pdup(&node->sig, sig, &tx->pool) < 0)
  return -1;

 if (!node->sig) {
  git_signature *tmp;
  int error;

  if (git_reference__log_signature(&tmp, tx->repo) < 0)
   return -1;


  error = git_signature__pdup(&node->sig, tmp, &tx->pool);
  git_signature_free(tmp);
  if (error < 0)
   return error;
 }

 if (msg) {
  node->message = git_pool_strdup(&tx->pool, msg);
  GIT_ERROR_CHECK_ALLOC(node->message);
 }

 return 0;
}
