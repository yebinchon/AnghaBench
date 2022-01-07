
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * repo; int pool; int type; int db; int locks; } ;
typedef TYPE_1__ git_transaction ;
typedef int git_repository ;
typedef int git_pool ;


 int TRANSACTION_REFS ;
 int assert (int) ;
 int git_pool_clear (int *) ;
 int git_pool_init (int *,int) ;
 TYPE_1__* git_pool_mallocz (int *,int) ;
 int git_repository_refdb (int *,int *) ;
 int git_strmap_new (int *) ;
 int memcpy (int *,int *,int) ;

int git_transaction_new(git_transaction **out, git_repository *repo)
{
 int error;
 git_pool pool;
 git_transaction *tx = ((void*)0);

 assert(out && repo);

 git_pool_init(&pool, 1);

 tx = git_pool_mallocz(&pool, sizeof(git_transaction));
 if (!tx) {
  error = -1;
  goto on_error;
 }

 if ((error = git_strmap_new(&tx->locks)) < 0) {
  error = -1;
  goto on_error;
 }

 if ((error = git_repository_refdb(&tx->db, repo)) < 0)
  goto on_error;

 tx->type = TRANSACTION_REFS;
 memcpy(&tx->pool, &pool, sizeof(git_pool));
 tx->repo = repo;
 *out = tx;
 return 0;

on_error:
 git_pool_clear(&pool);
 return error;
}
