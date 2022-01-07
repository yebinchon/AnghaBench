
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct sfe_ipv6_tcp_hdr {int dummy; } ;


 int TCPOLEN_SACK_PERBLOCK ;
 int TCPOLEN_TIMESTAMP ;
 scalar_t__ TCPOPT_EOL ;
 scalar_t__ TCPOPT_NOP ;
 scalar_t__ TCPOPT_SACK ;
 scalar_t__ TCPOPT_TIMESTAMP ;
 scalar_t__ likely (int) ;

__attribute__((used)) static bool sfe_ipv6_process_tcp_option_sack(const struct sfe_ipv6_tcp_hdr *th, const u32 data_offs,
          u32 *ack)
{
 u32 length = sizeof(struct sfe_ipv6_tcp_hdr);
 u8 *ptr = (u8 *)th + length;




 if (likely(data_offs == length + TCPOLEN_TIMESTAMP + 1 + 1)
     && likely(ptr[0] == TCPOPT_NOP)
     && likely(ptr[1] == TCPOPT_NOP)
     && likely(ptr[2] == TCPOPT_TIMESTAMP)
     && likely(ptr[3] == TCPOLEN_TIMESTAMP)) {
  return 1;
 }




 while (length < data_offs) {
  u8 size;
  u8 kind;

  ptr = (u8 *)th + length;
  kind = *ptr;





  if (kind == TCPOPT_NOP) {
   length++;
   continue;
  }

  if (kind == TCPOPT_SACK) {
   u32 sack = 0;
   u8 re = 1 + 1;

   size = *(ptr + 1);
   if ((size < (1 + 1 + TCPOLEN_SACK_PERBLOCK))
       || ((size - (1 + 1)) % (TCPOLEN_SACK_PERBLOCK))
       || (size > (data_offs - length))) {
    return 0;
   }

   re += 4;
   while (re < size) {
    u32 sack_re;
    u8 *sptr = ptr + re;
    sack_re = (sptr[0] << 24) | (sptr[1] << 16) | (sptr[2] << 8) | sptr[3];
    if (sack_re > sack) {
     sack = sack_re;
    }
    re += TCPOLEN_SACK_PERBLOCK;
   }
   if (sack > *ack) {
    *ack = sack;
   }
   length += size;
   continue;
  }
  if (kind == TCPOPT_EOL) {
   return 1;
  }
  size = *(ptr + 1);
  if (size < 2) {
   return 0;
  }
  length += size;
 }

 return 1;
}
