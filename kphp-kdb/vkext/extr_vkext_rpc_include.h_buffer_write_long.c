
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {scalar_t__ wptr; } ;


 int buffer_check_len_wptr (struct rpc_buffer*,int) ;

__attribute__((used)) static inline void buffer_write_long (struct rpc_buffer *buf, long long x) {
  buffer_check_len_wptr (buf, 8);
  *(long long *)(buf->wptr) = x;
  buf->wptr += 8;
}
