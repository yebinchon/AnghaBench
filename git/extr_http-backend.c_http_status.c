
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addf (struct strbuf*,char*,unsigned int,char const*) ;

__attribute__((used)) static void http_status(struct strbuf *hdr, unsigned code, const char *msg)
{
 strbuf_addf(hdr, "Status: %u %s\r\n", code, msg);
}
