
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct json_writer {struct strbuf json; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_addf (struct strbuf*,char*,double) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fmt_double(struct json_writer *jw, int precision,
         double value)
{
 if (precision < 0) {
  strbuf_addf(&jw->json, "%f", value);
 } else {
  struct strbuf fmt = STRBUF_INIT;
  strbuf_addf(&fmt, "%%.%df", precision);
  strbuf_addf(&jw->json, fmt.buf, value);
  strbuf_release(&fmt);
 }
}
