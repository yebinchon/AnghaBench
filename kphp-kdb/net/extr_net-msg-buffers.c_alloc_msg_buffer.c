
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msg_buffer {int dummy; } ;
struct TYPE_3__ {int buffer_size; } ;


 TYPE_1__* ChunkHeaders ;
 struct msg_buffer* alloc_msg_buffer_internal (struct msg_buffer*,TYPE_1__*) ;
 int buffer_size_values ;
 int init_buffer_chunk_headers () ;

struct msg_buffer *alloc_msg_buffer (struct msg_buffer *neighbor, int size_hint) {
  if (!buffer_size_values) {
    init_buffer_chunk_headers ();
  }
  int si = buffer_size_values - 1;
  if (size_hint >= 0) {
    while (si > 0 && ChunkHeaders[si-1].buffer_size >= size_hint) {
      si--;
    }
  }
  return alloc_msg_buffer_internal (neighbor, &ChunkHeaders[si]);
}
