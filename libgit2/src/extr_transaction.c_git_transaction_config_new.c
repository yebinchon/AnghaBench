
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * cfg; int type; } ;
typedef TYPE_1__ git_transaction ;
typedef int git_config ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int TRANSACTION_CONFIG ;
 int assert (int) ;
 TYPE_1__* git__calloc (int,int) ;

int git_transaction_config_new(git_transaction **out, git_config *cfg)
{
 git_transaction *tx;
 assert(out && cfg);

 tx = git__calloc(1, sizeof(git_transaction));
 GIT_ERROR_CHECK_ALLOC(tx);

 tx->type = TRANSACTION_CONFIG;
 tx->cfg = cfg;
 *out = tx;
 return 0;
}
