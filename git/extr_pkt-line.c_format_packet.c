
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct strbuf {size_t len; int * buf; } ;


 size_t LARGE_PACKET_MAX ;
 int _ (char*) ;
 int die (int ) ;
 int packet_trace (int *,size_t,int) ;
 int set_packet_header (int *,size_t) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_vaddf (struct strbuf*,char const*,int ) ;

__attribute__((used)) static void format_packet(struct strbuf *out, const char *prefix,
     const char *fmt, va_list args)
{
 size_t orig_len, n;

 orig_len = out->len;
 strbuf_addstr(out, "0000");
 strbuf_addstr(out, prefix);
 strbuf_vaddf(out, fmt, args);
 n = out->len - orig_len;

 if (n > LARGE_PACKET_MAX)
  die(_("protocol error: impossibly long line"));

 set_packet_header(&out->buf[orig_len], n);
 packet_trace(out->buf + orig_len + 4, n - 4, 1);
}
