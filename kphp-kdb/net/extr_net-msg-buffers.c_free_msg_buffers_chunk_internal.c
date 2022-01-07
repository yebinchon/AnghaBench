
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msg_buffers_chunk {scalar_t__ magic; scalar_t__ buffer_size; scalar_t__ tot_buffers; scalar_t__* free_cnt; scalar_t__ tot_chunks; int free_buffers; TYPE_2__* ch_next; TYPE_1__* ch_prev; struct msg_buffers_chunk* ch_head; } ;
struct TYPE_4__ {TYPE_1__* ch_prev; } ;
struct TYPE_3__ {TYPE_2__* ch_next; } ;


 scalar_t__ MSG_BUFFERS_CHUNK_SIZE ;
 scalar_t__ MSG_CHUNK_HEAD_MAGIC ;
 scalar_t__ MSG_CHUNK_USED_MAGIC ;
 int allocated_buffer_bytes ;
 int allocated_buffer_chunks ;
 int assert (int) ;
 int free (struct msg_buffers_chunk*) ;
 int memset (struct msg_buffers_chunk*,int ,int) ;

void free_msg_buffers_chunk_internal (struct msg_buffers_chunk *C, struct msg_buffers_chunk *CH) {
  assert (C->magic == MSG_CHUNK_USED_MAGIC);
  assert (CH->magic == MSG_CHUNK_HEAD_MAGIC);
  assert (C->buffer_size == CH->buffer_size);
  assert (C->tot_buffers == C->free_cnt[1]);
  assert (CH == C->ch_head);

  C->magic = 0;
  C->ch_head = 0;
  C->ch_next->ch_prev = C->ch_prev;
  C->ch_prev->ch_next = C->ch_next;

  CH->tot_buffers -= C->tot_buffers;
  CH->free_buffers -= C->tot_buffers;
  CH->tot_chunks--;
  assert (CH->tot_chunks >= 0);

  allocated_buffer_chunks--;
  allocated_buffer_bytes -= MSG_BUFFERS_CHUNK_SIZE;

  memset (C, 0, sizeof (struct msg_buffers_chunk));
  free (C);
}
