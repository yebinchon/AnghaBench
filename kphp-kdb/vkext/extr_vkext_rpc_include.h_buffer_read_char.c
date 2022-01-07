
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {scalar_t__ rptr; } ;


 int buffer_check_len_rptr (struct rpc_buffer*,int) ;

__attribute__((used)) static inline int buffer_read_char (struct rpc_buffer *buf, char *x) {
  if (!buffer_check_len_rptr (buf, 1)) {
    return -1;
  } else {
    *x = *(char *)buf->rptr;
    buf->rptr += 1;
    return 1;
  }
}
