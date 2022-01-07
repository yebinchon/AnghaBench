
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uintmax_t ;
struct strbuf {scalar_t__ len; } ;
struct line_buffer {int dummy; } ;
typedef scalar_t__ off_t ;


 int assert (int) ;
 size_t buffer_read_binary (struct line_buffer*,struct strbuf*,size_t) ;
 int error_short_read (struct line_buffer*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static int read_chunk(struct line_buffer *delta, off_t *delta_len,
        struct strbuf *buf, size_t len)
{
 assert(*delta_len >= 0);
 strbuf_reset(buf);
 if (len > (uintmax_t) *delta_len ||
     buffer_read_binary(delta, buf, len) != len)
  return error_short_read(delta);
 *delta_len -= buf->len;
 return 0;
}
