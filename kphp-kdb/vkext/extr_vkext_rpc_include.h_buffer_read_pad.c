
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {int sptr; int rptr; } ;



__attribute__((used)) static inline int buffer_read_pad (struct rpc_buffer *buf) {
  int pad_bytes = (buf->sptr - buf->rptr) & 3;
  buf->rptr += pad_bytes;
  return 1;
}
