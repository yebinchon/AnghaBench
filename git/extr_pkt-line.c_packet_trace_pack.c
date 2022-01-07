
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trace_pack ;
 int trace_verbatim (int *,char const*,unsigned int) ;

__attribute__((used)) static int packet_trace_pack(const char *buf, unsigned int len, int sideband)
{
 if (!sideband) {
  trace_verbatim(&trace_pack, buf, len);
  return 1;
 } else if (len && *buf == '\1') {
  trace_verbatim(&trace_pack, buf + 1, len - 1);
  return 1;
 } else {

  return 0;
 }
}
