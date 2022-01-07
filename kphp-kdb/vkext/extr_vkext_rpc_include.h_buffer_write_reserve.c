
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {scalar_t__ rptr; scalar_t__ wptr; } ;


 int assert (int) ;
 int buffer_check_len_wptr (struct rpc_buffer*,int) ;

__attribute__((used)) static inline void buffer_write_reserve (struct rpc_buffer *buf, int len) {
  assert (buf->rptr == buf->wptr);
  buffer_check_len_wptr (buf, len);
  buf->wptr += len;
  buf->rptr += len;
}
