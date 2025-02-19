
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ntlm_client ;
struct TYPE_3__ {int len; size_t pos; int* buf; } ;
typedef TYPE_1__ ntlm_buf ;


 int ntlm_client_set_errmsg (int *,char*) ;

__attribute__((used)) static inline bool read_int16(
 uint16_t *out,
 ntlm_client *ntlm,
 ntlm_buf *message)
{
 if (message->len - message->pos < 2) {
  ntlm_client_set_errmsg(ntlm, "truncated message");
  return 0;
 }

 *out =
  ((message->buf[message->pos] & 0xff)) |
  ((message->buf[message->pos+1] & 0xff) << 8);

 message->pos += 2;
 return 1;
}
