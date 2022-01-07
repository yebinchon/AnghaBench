
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct search_index_pair {int idx; int crc; } ;
struct TYPE_3__ {int local_id; int len; scalar_t__ text; } ;
typedef TYPE_1__ message_t ;


 int MAX_TEXT_LEN ;
 int * WordCRC ;
 int assert (int) ;
 int compute_message_distinct_words (scalar_t__*,int) ;
 scalar_t__* dyn_cur ;
 scalar_t__* dyn_top ;
 scalar_t__ text_shift ;
 int unpack_message (scalar_t__*,scalar_t__,int ) ;

__attribute__((used)) static void build_message_search_pairs (message_t *msg) {
  assert (dyn_top >= dyn_cur + MAX_TEXT_LEN);

  int msg_len = unpack_message (dyn_cur, msg->text + text_shift, msg->len);
  assert (msg_len >= 0 && msg_len < MAX_TEXT_LEN);
  dyn_cur[msg_len] = 0;



  int cnt = compute_message_distinct_words (dyn_cur, msg_len);

  dyn_top -= cnt * sizeof (struct search_index_pair);
  assert (dyn_cur <= dyn_top);

  struct search_index_pair *ptr = (struct search_index_pair *)dyn_top;

  int i;
  for (i = 0; i < cnt; i++, ptr++) {
    ptr->crc = WordCRC[i];
    ptr->idx = msg->local_id;
  }
}
