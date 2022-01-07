
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int _PAGE_CACHE_MODE_WC ;
 int __pgprot (int) ;
 int cachemode2protval (int ) ;
 int pgprot_val (int ) ;

pgprot_t pgprot_writecombine(pgprot_t prot)
{
 return __pgprot(pgprot_val(prot) |
    cachemode2protval(_PAGE_CACHE_MODE_WC));
}
