
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int * buf; } ;


 size_t LARGE_PACKET_MAX ;
 int _ (char*) ;
 int die (int ) ;
 int packet_trace (char const*,size_t,int) ;
 int set_packet_header (int *,size_t) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addstr (struct strbuf*,char*) ;

void packet_buf_write_len(struct strbuf *buf, const char *data, size_t len)
{
 size_t orig_len, n;

 orig_len = buf->len;
 strbuf_addstr(buf, "0000");
 strbuf_add(buf, data, len);
 n = buf->len - orig_len;

 if (n > LARGE_PACKET_MAX)
  die(_("protocol error: impossibly long line"));

 set_packet_header(&buf->buf[orig_len], n);
 packet_trace(data, len, 1);
}
