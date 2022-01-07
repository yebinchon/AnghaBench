
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_buffer {int dummy; } ;


 scalar_t__ buffer_read_char (struct rpc_buffer*,char*) ;
 scalar_t__ buffer_read_data (struct rpc_buffer*,int,char**) ;
 int buffer_read_pad (struct rpc_buffer*) ;
 int memcpy (int*,char*,int) ;

__attribute__((used)) static inline int buffer_read_string (struct rpc_buffer *buf, int *len, char **x) {
  unsigned char c;
  if (buffer_read_char (buf, (char *)&c) < 0) {
    return -1;
  }
  *len = c;
  if (*len == 255) {
    return -1;
  }
  if (*len == 254) {
    char *t;
    *len = 0;
    if (buffer_read_data (buf, 3, &t) < 0) {
      return -1;
    }
    memcpy (len, t, 3);
  }
  if (buffer_read_data (buf, *len, x) < 0) {
    return -1;
  }
  buffer_read_pad (buf);
  return 1;
}
