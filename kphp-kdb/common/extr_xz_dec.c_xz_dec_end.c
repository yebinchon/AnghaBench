
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xz_dec {int lzma2; } ;


 int free (struct xz_dec*) ;
 int xz_dec_lzma2_end (int ) ;

void xz_dec_end(struct xz_dec *s)
{
 if (s != ((void*)0)) {
  xz_dec_lzma2_end(s->lzma2);
  free(s);
 }
}
