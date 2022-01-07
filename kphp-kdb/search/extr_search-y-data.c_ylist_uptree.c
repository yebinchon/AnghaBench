
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ylist_decoder_stack_entry {int left_idx; int right_idx; } ;
struct ylist_decoder {int k; scalar_t__ p; } ;


 int assert (int) ;
 int ylist_copy_positions (struct ylist_decoder*,struct ylist_decoder_stack_entry*) ;

__attribute__((used)) static void ylist_uptree (struct ylist_decoder *dec, struct ylist_decoder_stack_entry *data, int idx) {
  dec->k = idx;
  for (;;) {
    data--;
    (dec->p)--;
    assert (dec->p >= 0);
    int middle = (data->left_idx + data->right_idx) >> 1;
    if (middle == idx) {
      ylist_copy_positions (dec, data);
      return;
    }
  }
}
