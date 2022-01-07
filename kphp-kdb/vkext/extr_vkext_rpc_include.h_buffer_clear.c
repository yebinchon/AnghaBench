
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {int sptr; int wptr; int rptr; } ;



__attribute__((used)) static inline void buffer_clear (struct rpc_buffer *buf) {
  buf->rptr = buf->wptr = buf->sptr;
}
