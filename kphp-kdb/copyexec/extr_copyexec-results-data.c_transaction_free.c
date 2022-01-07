
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int root; int transaction_id; int volume_id; } ;
typedef TYPE_1__ transaction_t ;


 int free_tree (int ) ;
 int get_transaction_f (int ,int ,int) ;
 int lru_remove (TYPE_1__*) ;
 int tot_memory_transactions ;
 int zfree (TYPE_1__*,int) ;

__attribute__((used)) static void transaction_free (transaction_t *T) {
  lru_remove (T);
  get_transaction_f (T->volume_id, T->transaction_id, -1);
  free_tree (T->root);
  zfree (T, sizeof (*T));
  tot_memory_transactions--;
}
