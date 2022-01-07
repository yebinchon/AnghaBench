
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int get_trace_prefix () ;
 scalar_t__ packet_trace_pack (char const*,unsigned int,int) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strbuf_addch (struct strbuf*,char const) ;
 int strbuf_addf (struct strbuf*,char*,char const,...) ;
 int strbuf_init (struct strbuf*,unsigned int) ;
 int strbuf_release (struct strbuf*) ;
 unsigned int strlen (char const*) ;
 int trace_pack ;
 int trace_packet ;
 int trace_strbuf (int *,struct strbuf*) ;
 int trace_want (int *) ;

__attribute__((used)) static void packet_trace(const char *buf, unsigned int len, int write)
{
 int i;
 struct strbuf out;
 static int in_pack, sideband;

 if (!trace_want(&trace_packet) && !trace_want(&trace_pack))
  return;

 if (in_pack) {
  if (packet_trace_pack(buf, len, sideband))
   return;
 } else if (starts_with(buf, "PACK") || starts_with(buf, "\1PACK")) {
  in_pack = 1;
  sideband = *buf == '\1';
  packet_trace_pack(buf, len, sideband);





  buf = "PACK ...";
  len = strlen(buf);
 }

 if (!trace_want(&trace_packet))
  return;


 strbuf_init(&out, len+32);

 strbuf_addf(&out, "packet: %12s%c ",
      get_trace_prefix(), write ? '>' : '<');


 for (i = 0; i < len; i++) {

  if (buf[i] == '\n')
   continue;
  if (buf[i] >= 0x20 && buf[i] <= 0x7e)
   strbuf_addch(&out, buf[i]);
  else
   strbuf_addf(&out, "\\%o", buf[i]);
 }

 strbuf_addch(&out, '\n');
 trace_strbuf(&trace_packet, &out);
 strbuf_release(&out);
}
