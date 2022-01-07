
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addf (struct strbuf*,char*,int) ;
 int strbuf_addstr (struct strbuf*,char*) ;

__attribute__((used)) static void add_line_count(struct strbuf *out, int count)
{
 switch (count) {
 case 0:
  strbuf_addstr(out, "0,0");
  break;
 case 1:
  strbuf_addstr(out, "1");
  break;
 default:
  strbuf_addf(out, "1,%d", count);
  break;
 }
}
