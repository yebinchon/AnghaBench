
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {char* rptr; } ;


 int buffer_check_len_rptr (struct rpc_buffer*,int) ;

__attribute__((used)) static inline int buffer_read_data (struct rpc_buffer *buf, int len, char **x) {
  if (!buffer_check_len_rptr (buf, len)) {
    return -1;
  } else {
    *x = buf->rptr;
    buf->rptr += len;

    return 1;
  }
}
