
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msg_buffers_chunk {scalar_t__ magic; int two_power; scalar_t__* free_cnt; int tot_buffers; TYPE_1__* ch_head; scalar_t__ buffer_size; } ;
struct msg_buffer {int refcnt; scalar_t__ magic; struct msg_buffers_chunk* chunk; } ;
struct TYPE_2__ {int free_buffers; } ;


 scalar_t__ MSG_BUFFER_FREE_MAGIC ;
 scalar_t__ MSG_BUFFER_USED_MAGIC ;
 scalar_t__ MSG_CHUNK_USED_MAGIC ;
 int assert (int) ;
 int fprintf (int ,char*,int) ;
 int free_msg_buffers_chunk (struct msg_buffers_chunk*) ;
 int get_buffer_no (struct msg_buffers_chunk*,struct msg_buffer*) ;
 int stderr ;
 int total_used_buffers ;
 int total_used_buffers_size ;
 int verbosity ;

int free_std_msg_buffer (struct msg_buffers_chunk *C, struct msg_buffer *X) {
  assert (!X->refcnt && X->magic == MSG_BUFFER_USED_MAGIC && C->magic == MSG_CHUNK_USED_MAGIC && X->chunk == C);
  int x = get_buffer_no (C, X);
  int two_power = C->two_power;
  if (verbosity > 2) {
    fprintf (stderr, "free_msg_buffer(%d)\n", x);
  }
  x += two_power;
  assert (!C->free_cnt[x]);
  do {
    assert (++C->free_cnt[x] > 0);
  } while (x >>= 1);

  X->magic = MSG_BUFFER_FREE_MAGIC;
  X->refcnt = -0x40000000;
  ++ C->ch_head->free_buffers;

  total_used_buffers_size -= C->buffer_size;
  total_used_buffers --;

  if (!C->free_cnt[1] && C->ch_head->free_buffers * 4 >= C->tot_buffers * 5) {
    free_msg_buffers_chunk (C);
  }

  return 1;
}
