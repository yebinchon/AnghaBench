
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct xz_dec_lzma2* buf; int mode; } ;
struct xz_dec_lzma2 {TYPE_1__ dict; } ;


 scalar_t__ DEC_IS_MULTI (int ) ;
 int free (struct xz_dec_lzma2*) ;

void xz_dec_lzma2_end(struct xz_dec_lzma2 *s)
{
 if (DEC_IS_MULTI(s->dict.mode))
  free(s->dict.buf);

 free(s);
}
