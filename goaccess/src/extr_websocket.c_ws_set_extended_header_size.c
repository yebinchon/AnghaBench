
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int WS_FRM_PAYLOAD (char const) ;



__attribute__((used)) static void
ws_set_extended_header_size (const char *buf, int *extended)
{
  uint64_t payloadlen = 0;

  payloadlen = WS_FRM_PAYLOAD (*(buf + 1));
  switch (payloadlen) {
  case 129:
    *extended = 2;
    break;
  case 128:
    *extended = 8;
    break;
  }
}
