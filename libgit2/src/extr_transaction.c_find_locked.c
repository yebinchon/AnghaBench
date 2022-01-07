
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int transaction_node ;
struct TYPE_3__ {int locks; } ;
typedef TYPE_1__ git_transaction ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_REFERENCE ;
 int git_error_set (int ,char*) ;
 int * git_strmap_get (int ,char const*) ;

__attribute__((used)) static int find_locked(transaction_node **out, git_transaction *tx, const char *refname)
{
 transaction_node *node;

 if ((node = git_strmap_get(tx->locks, refname)) == ((void*)0)) {
  git_error_set(GIT_ERROR_REFERENCE, "the specified reference is not locked");
  return GIT_ENOTFOUND;
 }

 *out = node;
 return 0;
}
