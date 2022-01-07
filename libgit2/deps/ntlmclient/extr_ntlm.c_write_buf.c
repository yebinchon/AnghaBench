
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ntlm_client ;
struct TYPE_3__ {size_t len; size_t pos; int * buf; } ;
typedef TYPE_1__ ntlm_buf ;


 int memcpy (int *,unsigned char const*,size_t) ;
 int ntlm_client_set_errmsg (int *,char*) ;

__attribute__((used)) static inline bool write_buf(
 ntlm_client *ntlm,
 ntlm_buf *out,
 const unsigned char *buf,
 size_t len)
{
 if (out->len - out->pos < len) {
  ntlm_client_set_errmsg(ntlm, "out of buffer space");
  return 0;
 }

 memcpy(&out->buf[out->pos], buf, len);
 out->pos += len;
 return 1;
}
