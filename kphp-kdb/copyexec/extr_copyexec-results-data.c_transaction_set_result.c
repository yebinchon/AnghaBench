
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int value; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_8__ {int root; } ;
typedef TYPE_2__ transaction_t ;
struct TYPE_9__ {int host_id; int volume_id; } ;
typedef TYPE_3__ host_t ;


 TYPE_2__* get_transaction_f (int ,int,int) ;
 int lrand48 () ;
 int tree_insert (int ,int ,int ,unsigned int) ;
 TYPE_1__* tree_lookup (int ,int ) ;

__attribute__((used)) static int transaction_set_result (host_t *H, int transaction_id, unsigned result) {
  transaction_t *T = get_transaction_f (H->volume_id, transaction_id, 1);
  tree_t *P = tree_lookup (T->root, H->host_id);
  if (P != ((void*)0)) {
    P->value = result;
  } else {
    T->root = tree_insert (T->root, H->host_id, lrand48 (), result);
  }
  return 0;
}
