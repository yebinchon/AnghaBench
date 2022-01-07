
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct keep_mc_store {int dummy; } ;
struct connection {TYPE_1__* Tmp; } ;
typedef int nb_iterator_t ;
struct TYPE_7__ {scalar_t__ magic; scalar_t__ key_len; int key; } ;
struct TYPE_6__ {int total_bytes; } ;


 scalar_t__ MC_STORE_MAGIC ;
 int advance_skip_read_ptr (TYPE_1__*,int) ;
 int assert (int) ;
 TYPE_3__* mc_store ;
 int nbit_read_in (int *,TYPE_3__*,int) ;
 int nbit_set (int *,TYPE_1__*) ;
 scalar_t__ read_in (TYPE_1__*,int ,scalar_t__) ;

int read_last_kept (struct connection *c, int force) {
  if (c->Tmp) {
    nb_iterator_t R;
    nbit_set (&R, c->Tmp);
    int l = nbit_read_in (&R, mc_store, sizeof (struct keep_mc_store));
    if (l > 0 && (force || mc_store->magic == MC_STORE_MAGIC)) {
      assert (l == sizeof (struct keep_mc_store));
      assert (mc_store->magic == MC_STORE_MAGIC);
      assert (advance_skip_read_ptr (c->Tmp, sizeof (struct keep_mc_store)) == sizeof (struct keep_mc_store));
      assert (read_in (c->Tmp, mc_store->key, mc_store->key_len) == mc_store->key_len);
      assert (!c->Tmp->total_bytes);

      return 1;
    }
    return 0;
  }
  return 0;
}
