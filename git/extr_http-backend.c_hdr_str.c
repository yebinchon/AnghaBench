
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addf (struct strbuf*,char*,char const*,char const*) ;

__attribute__((used)) static void hdr_str(struct strbuf *hdr, const char *name, const char *value)
{
 strbuf_addf(hdr, "%s: %s\r\n", name, value);
}
