
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pszind_t ;


 size_t PAGE_MASK ;
 int assert (int) ;
 size_t sz_large_pad ;
 size_t sz_pind2sz (scalar_t__) ;
 scalar_t__ sz_psz2ind (size_t) ;

size_t
sz_psz_quantize_floor(size_t size) {
 size_t ret;
 pszind_t pind;

 assert(size > 0);
 assert((size & PAGE_MASK) == 0);

 pind = sz_psz2ind(size - sz_large_pad + 1);
 if (pind == 0) {






  return size;
 }
 ret = sz_pind2sz(pind - 1) + sz_large_pad;
 assert(ret <= size);
 return ret;
}
