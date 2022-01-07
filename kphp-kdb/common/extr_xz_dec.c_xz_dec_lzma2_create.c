
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mode; scalar_t__ allocated; int * buf; int size_max; } ;
struct xz_dec_lzma2 {TYPE_1__ dict; } ;
typedef enum xz_mode { ____Placeholder_xz_mode } xz_mode ;


 scalar_t__ DEC_IS_DYNALLOC (int) ;
 scalar_t__ DEC_IS_PREALLOC (int) ;
 struct xz_dec_lzma2* calloc (int,int) ;
 int free (struct xz_dec_lzma2*) ;
 int * malloc (int ) ;

struct xz_dec_lzma2 *xz_dec_lzma2_create(enum xz_mode mode,
         uint32_t dict_max)
{
 struct xz_dec_lzma2 *s = calloc(sizeof(*s), 1);
 if (s == ((void*)0))
  return ((void*)0);

 s->dict.mode = mode;
 s->dict.size_max = dict_max;

 if (DEC_IS_PREALLOC(mode)) {
  s->dict.buf = malloc(dict_max);
  if (s->dict.buf == ((void*)0)) {
   free(s);
   return ((void*)0);
  }
 } else if (DEC_IS_DYNALLOC(mode)) {
  s->dict.buf = ((void*)0);
  s->dict.allocated = 0;
 }

 return s;
}
