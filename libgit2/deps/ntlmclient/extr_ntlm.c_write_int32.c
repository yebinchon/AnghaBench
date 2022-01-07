
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ntlm_client ;
struct TYPE_3__ {int len; int pos; int* buf; } ;
typedef TYPE_1__ ntlm_buf ;


 int ntlm_client_set_errmsg (int *,char*) ;

__attribute__((used)) static inline bool write_int32(
 ntlm_client *ntlm,
 ntlm_buf *out,
 uint32_t value)
{
 if (out->len - out->pos < 2) {
  ntlm_client_set_errmsg(ntlm, "out of buffer space");
  return 0;
 }

 out->buf[out->pos++] = (value & 0x000000ff);
 out->buf[out->pos++] = (value & 0x0000ff00) >> 8;
 out->buf[out->pos++] = (value & 0x00ff0000) >> 16;
 out->buf[out->pos++] = (value & 0xff000000) >> 24;
 return 1;
}
