
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;


 int content_length ;
 int content_type ;
 int end_headers (struct strbuf*) ;
 int hdr_int (struct strbuf*,int ,int ) ;
 int hdr_str (struct strbuf*,int ,char const*) ;
 int write_or_die (int,int ,int ) ;

__attribute__((used)) static void send_strbuf(struct strbuf *hdr,
   const char *type, struct strbuf *buf)
{
 hdr_int(hdr, content_length, buf->len);
 hdr_str(hdr, content_type, type);
 end_headers(hdr);
 write_or_die(1, buf->buf, buf->len);
}
