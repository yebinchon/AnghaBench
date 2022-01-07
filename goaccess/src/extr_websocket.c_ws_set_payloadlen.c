
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_3__ {int payloadlen; } ;
typedef TYPE_1__ WSFrame ;


 int WS_FRM_PAYLOAD (char const) ;


 int be64toh (int) ;
 int memcpy (int*,char const*,int) ;
 int ntohs (int) ;

__attribute__((used)) static void
ws_set_payloadlen (WSFrame * frm, const char *buf)
{
  uint64_t payloadlen = 0, len64;
  uint16_t len16;


  payloadlen = WS_FRM_PAYLOAD (*(buf + 1));
  switch (payloadlen) {
  case 129:
    memcpy (&len16, (buf + 2), sizeof (uint16_t));
    frm->payloadlen = ntohs (len16);
    break;
  case 128:
    memcpy (&len64, (buf + 2), sizeof (uint64_t));
    frm->payloadlen = be64toh (len64);
    break;
  default:
    frm->payloadlen = payloadlen;
  }
}
