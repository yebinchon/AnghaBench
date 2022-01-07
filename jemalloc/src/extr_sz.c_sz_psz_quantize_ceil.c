
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PAGE_MASK ;
 size_t SC_LARGE_MAXCLASS ;
 int assert (int) ;
 size_t sz_large_pad ;
 size_t sz_pind2sz (int ) ;
 int sz_psz2ind (size_t) ;
 size_t sz_psz_quantize_floor (size_t) ;

size_t
sz_psz_quantize_ceil(size_t size) {
 size_t ret;

 assert(size > 0);
 assert(size - sz_large_pad <= SC_LARGE_MAXCLASS);
 assert((size & PAGE_MASK) == 0);

 ret = sz_psz_quantize_floor(size);
 if (ret < size) {
  ret = sz_pind2sz(sz_psz2ind(ret - sz_large_pad + 1)) +
      sz_large_pad;
 }
 return ret;
}
