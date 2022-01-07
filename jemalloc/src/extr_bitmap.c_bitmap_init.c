
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t bitmap_t ;
struct TYPE_4__ {size_t nbits; int ngroups; } ;
typedef TYPE_1__ bitmap_info_t ;


 size_t BITMAP_GROUP_NBITS ;
 size_t BITMAP_GROUP_NBITS_MASK ;
 int bitmap_size (TYPE_1__ const*) ;
 int memset (size_t*,int,int ) ;

void
bitmap_init(bitmap_t *bitmap, const bitmap_info_t *binfo, bool fill) {
 size_t extra;

 if (fill) {
  memset(bitmap, 0, bitmap_size(binfo));
  return;
 }

 memset(bitmap, 0xffU, bitmap_size(binfo));
 extra = (BITMAP_GROUP_NBITS - (binfo->nbits & BITMAP_GROUP_NBITS_MASK))
     & BITMAP_GROUP_NBITS_MASK;
 if (extra != 0) {
  bitmap[binfo->ngroups - 1] >>= extra;
 }
}
