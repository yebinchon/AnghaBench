
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;
struct strbuf {int dummy; } ;


 int hdr_date (struct strbuf*,char*,scalar_t__) ;
 int hdr_str (struct strbuf*,char*,char*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void hdr_cache_forever(struct strbuf *hdr)
{
 timestamp_t now = time(((void*)0));
 hdr_date(hdr, "Date", now);
 hdr_date(hdr, "Expires", now + 31536000);
 hdr_str(hdr, "Cache-Control", "public, max-age=31536000");
}
