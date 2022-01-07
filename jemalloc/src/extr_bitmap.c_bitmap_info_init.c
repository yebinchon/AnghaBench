
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nbits; int ngroups; } ;
typedef TYPE_1__ bitmap_info_t ;


 int BITMAP_BITS2GROUPS (size_t) ;
 size_t LG_BITMAP_MAXBITS ;
 size_t ZU (int) ;
 int assert (int) ;

void
bitmap_info_init(bitmap_info_t *binfo, size_t nbits) {
 assert(nbits > 0);
 assert(nbits <= (ZU(1) << LG_BITMAP_MAXBITS));

 binfo->ngroups = BITMAP_BITS2GROUPS(nbits);
 binfo->nbits = nbits;
}
