
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keep_mc_store {int magic; scalar_t__ tag; scalar_t__ len; } ;
struct connection {int Tmp; } ;
typedef int nb_iterator_t ;


 scalar_t__ MAX_QUERY ;
 int QLsave ;
 struct keep_mc_store* Qsave ;
 int TARG_STORE_MAGIC ;
 int assert (int) ;
 struct keep_mc_store mc_store ;
 int nbit_read_in (int *,struct keep_mc_store*,int) ;
 int nbit_set (int *,int ) ;
 scalar_t__ tag_save ;

__attribute__((used)) static void targ_load_saved_data (struct connection *c) {
  struct keep_mc_store *Data = 0;

  if (!c->Tmp) {
    tag_save = 0;
    return;
  }

  nb_iterator_t R;
  nbit_set (&R, c->Tmp);
  int l = nbit_read_in (&R, &mc_store, sizeof (struct keep_mc_store));
  if (l != sizeof (struct keep_mc_store)) {
    tag_save = 0;
    return;
  }
  Data = &mc_store;
  assert (Data->magic = TARG_STORE_MAGIC);

  QLsave = 0;
  tag_save = Data->tag;


  QLsave = (Data->len < MAX_QUERY ? Data->len : MAX_QUERY);
  if (tag_save < 0) {
    assert (nbit_read_in (&R, Qsave, QLsave * 4) == QLsave * 4);
  } else if (tag_save > 0) {
    assert (nbit_read_in (&R, Qsave, QLsave) == QLsave);
  }
}
