
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;


 int strbuf_add (struct strbuf*,char*,int) ;
 int strbuf_release (struct strbuf*) ;
 int write_or_die (int,int ,int ) ;

__attribute__((used)) static void end_headers(struct strbuf *hdr)
{
 strbuf_add(hdr, "\r\n", 2);
 write_or_die(1, hdr->buf, hdr->len);
 strbuf_release(hdr);
}
