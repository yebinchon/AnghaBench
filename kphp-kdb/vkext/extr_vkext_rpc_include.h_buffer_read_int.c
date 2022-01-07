
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {scalar_t__ rptr; } ;


 int buffer_check_len_rptr (struct rpc_buffer*,int) ;

__attribute__((used)) static inline int buffer_read_int (struct rpc_buffer *buf, int *x) {
  if (!buffer_check_len_rptr (buf, 4)) {
    return -1;
  } else {
    *x = *(int *)buf->rptr;
    buf->rptr += 4;
    return 1;
  }
}
