
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {int wptr; } ;


 int buffer_check_len_wptr (struct rpc_buffer*,int) ;
 int memcpy (int,void const*,int) ;

__attribute__((used)) static inline void buffer_write_data (struct rpc_buffer *buf, const void *x, int len) {
  buffer_check_len_wptr (buf, len);
  memcpy (buf->wptr, x, len);
  buf->wptr += len;
}
