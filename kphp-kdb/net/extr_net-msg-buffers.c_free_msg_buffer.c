
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_buffers_chunk {scalar_t__ magic; int (* free_buffer ) (struct msg_buffers_chunk*,struct msg_buffer*) ;} ;
struct msg_buffer {struct msg_buffers_chunk* chunk; int refcnt; } ;


 scalar_t__ MSG_CHUNK_USED_MAGIC ;
 int assert (int) ;
 int stub1 (struct msg_buffers_chunk*,struct msg_buffer*) ;

int free_msg_buffer (struct msg_buffer *X) {
  assert (!X->refcnt);
  struct msg_buffers_chunk *C = X->chunk;
  assert (C->magic == MSG_CHUNK_USED_MAGIC);
  return C->free_buffer (C, X);
}
