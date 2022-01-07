
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; size_t alloc; scalar_t__ buf; } ;
typedef int ssize_t ;


 scalar_t__ LARGE_PACKET_DATA_MAX ;
 int PACKET_READ_GENTLE_ON_EOF ;
 int packet_read (int,int *,int *,scalar_t__,scalar_t__,int ) ;
 int strbuf_grow (struct strbuf*,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

ssize_t read_packetized_to_strbuf(int fd_in, struct strbuf *sb_out)
{
 int packet_len;

 size_t orig_len = sb_out->len;
 size_t orig_alloc = sb_out->alloc;

 for (;;) {
  strbuf_grow(sb_out, LARGE_PACKET_DATA_MAX);
  packet_len = packet_read(fd_in, ((void*)0), ((void*)0),





   sb_out->buf + sb_out->len, LARGE_PACKET_DATA_MAX+1,
   PACKET_READ_GENTLE_ON_EOF);
  if (packet_len <= 0)
   break;
  sb_out->len += packet_len;
 }

 if (packet_len < 0) {
  if (orig_alloc == 0)
   strbuf_release(sb_out);
  else
   strbuf_setlen(sb_out, orig_len);
  return packet_len;
 }
 return sb_out->len - orig_len;
}
