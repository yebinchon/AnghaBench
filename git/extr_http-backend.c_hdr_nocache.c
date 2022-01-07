
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int hdr_str (struct strbuf*,char*,char*) ;

__attribute__((used)) static void hdr_nocache(struct strbuf *hdr)
{
 hdr_str(hdr, "Expires", "Fri, 01 Jan 1980 00:00:00 GMT");
 hdr_str(hdr, "Pragma", "no-cache");
 hdr_str(hdr, "Cache-Control", "no-cache, max-age=0, must-revalidate");
}
