
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct strbuf {int dummy; } ;


 int DATE_MODE (int ) ;
 int RFC2822 ;
 int hdr_str (struct strbuf*,char const*,char const*) ;
 char* show_date (int ,int ,int ) ;

__attribute__((used)) static void hdr_date(struct strbuf *hdr, const char *name, timestamp_t when)
{
 const char *value = show_date(when, 0, DATE_MODE(RFC2822));
 hdr_str(hdr, name, value);
}
