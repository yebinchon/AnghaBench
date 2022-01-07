
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ntlm_client ;
struct TYPE_3__ {int len; int pos; int* buf; } ;
typedef TYPE_1__ ntlm_buf ;


 int ntlm_client_set_errmsg (int *,char*) ;

__attribute__((used)) static inline bool write_int16(
 ntlm_client *ntlm,
 ntlm_buf *out,
 uint16_t value)
{
 if (out->len - out->pos < 2) {
  ntlm_client_set_errmsg(ntlm, "out of buffer space");
  return 0;
 }

 out->buf[out->pos++] = (value & 0x000000ff);
 out->buf[out->pos++] = (value & 0x0000ff00) >> 8;
 return 1;
}
