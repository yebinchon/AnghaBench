
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {scalar_t__ rptr; scalar_t__ wptr; } ;



__attribute__((used)) static inline int buffer_check_len_rptr (struct rpc_buffer *buf, int x) {
  return (buf->rptr + x <= buf->wptr);
}
