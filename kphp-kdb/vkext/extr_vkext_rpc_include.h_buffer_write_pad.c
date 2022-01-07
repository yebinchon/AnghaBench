
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {int sptr; int wptr; } ;


 int buffer_check_len_wptr (struct rpc_buffer*,int) ;
 int memset (int,int ,int) ;

__attribute__((used)) static inline void buffer_write_pad (struct rpc_buffer *buf) {
  int pad_bytes = (int)((buf->sptr - buf->wptr) & 3);
  buffer_check_len_wptr (buf, pad_bytes);
  memset (buf->wptr, 0, pad_bytes);
  buf->wptr += pad_bytes;
}
