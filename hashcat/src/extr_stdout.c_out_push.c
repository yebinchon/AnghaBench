
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {char* buf; int len; } ;
typedef TYPE_1__ out_t ;


 int HCBUFSIZ_SMALL ;
 int memcpy (char*,int const*,int const) ;
 int out_flush (TYPE_1__*) ;

__attribute__((used)) static void out_push (out_t *out, const u8 *pw_buf, const int pw_len)
{
  char *ptr = out->buf + out->len;

  memcpy (ptr, pw_buf, pw_len);
  ptr[pw_len] = '\n';

  out->len += pw_len + 1;



  if (out->len >= HCBUFSIZ_SMALL - 300)
  {
    out_flush (out);
  }
}
