
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct hashmap_int_int {TYPE_1__* h; } ;
struct TYPE_8__ {TYPE_5__* cur; } ;
typedef TYPE_2__ iheap_en_t ;
struct TYPE_9__ {int item_id; } ;
struct TYPE_7__ {int value; } ;


 TYPE_2__* IHE ;
 scalar_t__ Q_order ;
 int change_multiple_rates_set_rate_calls ;
 int clear_res () ;
 int do_set_rate_new (int ,int,int) ;
 int flushing_binlog_check () ;
 int free_all_list_decoders () ;
 int get_rate_item (TYPE_5__*,int) ;
 scalar_t__ hashmap_int_int_get (struct hashmap_int_int*,int,int*) ;
 int ihe_advance (TYPE_2__*) ;
 int ihe_init (TYPE_2__*,int ,int,int ) ;
 int universal_tag_hash ;

int do_change_multiple_rates_using_hashmap (struct hashmap_int_int *HM, int rate_id) {
  Q_order = 0;
  clear_res ();

  if (!ihe_init (IHE, universal_tag_hash, 1, 0)) {
    return 0;
  }

  iheap_en_t *H = IHE;
  while (H->cur) {
    int slot;
    int old_rate = get_rate_item (H->cur, rate_id);
    if (old_rate && hashmap_int_int_get (HM, old_rate, &slot)) {
      int new_rate = HM->h[slot].value;
      if (old_rate != new_rate) {
        change_multiple_rates_set_rate_calls++;
        do_set_rate_new (H->cur->item_id, rate_id, new_rate);
        flushing_binlog_check ();
      }
    }
    ihe_advance (H);
  }
  free_all_list_decoders ();
  return 1;
}
