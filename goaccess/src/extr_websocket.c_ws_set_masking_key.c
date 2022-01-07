
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int mask; } ;
typedef TYPE_1__ WSFrame ;


 int WS_FRM_PAYLOAD (char const) ;


 int memcpy (int *,char const*,int) ;

__attribute__((used)) static void
ws_set_masking_key (WSFrame * frm, const char *buf)
{
  uint64_t payloadlen = 0;


  payloadlen = WS_FRM_PAYLOAD (*(buf + 1));
  switch (payloadlen) {
  case 129:
    memcpy (&frm->mask, buf + 4, sizeof (frm->mask));
    break;
  case 128:
    memcpy (&frm->mask, buf + 10, sizeof (frm->mask));
    break;
  default:
    memcpy (&frm->mask, buf + 2, sizeof (frm->mask));
  }
}
