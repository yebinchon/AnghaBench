
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {int dummy; } ;


 int assert (int) ;
 int buffer_write_char (struct rpc_buffer*,int) ;
 int buffer_write_data (struct rpc_buffer*,...) ;
 int buffer_write_pad (struct rpc_buffer*) ;

__attribute__((used)) static inline void buffer_write_string (struct rpc_buffer *buf, int len, const char *s) {
  assert (!(len & 0xff000000));
  buffer_write_char (buf, 254);
  buffer_write_data (buf, &len, 3);
  buffer_write_data (buf, s, len);
  buffer_write_pad (buf);
}
