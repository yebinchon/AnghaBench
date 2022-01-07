
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_5__ {int unicode_ctx; } ;
typedef TYPE_1__ ntlm_client ;
struct TYPE_6__ {size_t pos; int * buf; } ;
typedef TYPE_2__ ntlm_buf ;


 int ntlm_unicode_utf16_to_8 (char**,size_t*,int ,char*,size_t) ;

__attribute__((used)) static inline bool read_string_unicode(
 char **out,
 ntlm_client *ntlm,
 ntlm_buf *message,
 uint8_t string_len)
{
 size_t out_len;
 int ret = ntlm_unicode_utf16_to_8(out,
  &out_len,
  ntlm->unicode_ctx,
  (char *)&message->buf[message->pos],
  string_len);

 message->pos += string_len;

 return ret;
}
