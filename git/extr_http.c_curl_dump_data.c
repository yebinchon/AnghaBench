
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int trace_curl ;
 int trace_strbuf (int *,struct strbuf*) ;

__attribute__((used)) static void curl_dump_data(const char *text, unsigned char *ptr, size_t size)
{
 size_t i;
 struct strbuf out = STRBUF_INIT;
 unsigned int width = 60;

 strbuf_addf(&out, "%s, %10.10ld bytes (0x%8.8lx)\n",
  text, (long)size, (long)size);
 trace_strbuf(&trace_curl, &out);

 for (i = 0; i < size; i += width) {
  size_t w;

  strbuf_reset(&out);
  strbuf_addf(&out, "%s: ", text);
  for (w = 0; (w < width) && (i + w < size); w++) {
   unsigned char ch = ptr[i + w];

   strbuf_addch(&out,
           (ch >= 0x20) && (ch < 0x80)
           ? ch : '.');
  }
  strbuf_addch(&out, '\n');
  trace_strbuf(&trace_curl, &out);
 }
 strbuf_release(&out);
}
