
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xz_dec {int mode; int * lzma2; } ;
typedef enum xz_mode { ____Placeholder_xz_mode } xz_mode ;


 struct xz_dec* calloc (int,int) ;
 int free (struct xz_dec*) ;
 int * xz_dec_lzma2_create (int,int ) ;
 int xz_dec_reset (struct xz_dec*) ;

struct xz_dec *xz_dec_init(enum xz_mode mode, uint32_t dict_max)
{
 struct xz_dec *s = calloc(sizeof(*s), 1);
 if (s == ((void*)0))
  return ((void*)0);

 s->mode = mode;

 s->lzma2 = xz_dec_lzma2_create(mode, dict_max);
 if (s->lzma2 == ((void*)0))
  goto error_lzma2;

 xz_dec_reset(s);
 return s;

error_lzma2:
 free(s);
 return ((void*)0);
}
