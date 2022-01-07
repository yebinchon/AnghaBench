
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ntlm_client ;
struct TYPE_3__ {size_t len; size_t pos; int * buf; } ;
typedef TYPE_1__ ntlm_buf ;


 int memcpy (unsigned char*,int *,size_t) ;
 int ntlm_client_set_errmsg (int *,char*) ;

__attribute__((used)) static inline bool read_buf(
 unsigned char *out,
 ntlm_client *ntlm,
 ntlm_buf *message,
 size_t len)
{
 if (message->len - message->pos < len) {
  ntlm_client_set_errmsg(ntlm, "truncated message");
  return 0;
 }

 memcpy(out, &message->buf[message->pos], len);
 message->pos += len;

 return 1;
}
