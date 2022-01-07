
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef enum sideband_type { ____Placeholder_sideband_type } sideband_type ;


 int LARGE_PACKET_MAX ;

 struct strbuf STRBUF_INIT ;
 int demultiplex_sideband (char const*,char*,int,int ,struct strbuf*,int*) ;
 int packet_read (int,int *,int *,char*,int ,int ) ;
 int write_or_die (int,char*,int) ;

int recv_sideband(const char *me, int in_stream, int out)
{
 char buf[LARGE_PACKET_MAX + 1];
 int len;
 struct strbuf scratch = STRBUF_INIT;
 enum sideband_type sideband_type;

 while (1) {
  len = packet_read(in_stream, ((void*)0), ((void*)0), buf, LARGE_PACKET_MAX,
      0);
  if (!demultiplex_sideband(me, buf, len, 0, &scratch,
       &sideband_type))
   continue;
  switch (sideband_type) {
  case 128:
   write_or_die(out, buf + 1, len - 1);
   break;
  default:
   return sideband_type;
  }
 }
}
