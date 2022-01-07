
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int nlevels; int ngroups; TYPE_1__* levels; int nbits; } ;
typedef TYPE_2__ const bitmap_info_t ;
struct TYPE_6__ {int group_offset; } ;


 int assert_u_eq (unsigned int,unsigned int,char*,size_t) ;
 int assert_zu_eq (int ,int ,char*,...) ;
 int bitmap_info_init (TYPE_2__ const*,size_t) ;
 int bitmap_size (TYPE_2__ const*) ;

__attribute__((used)) static void
test_bitmap_initializer_body(const bitmap_info_t *binfo, size_t nbits) {
 bitmap_info_t binfo_dyn;
 bitmap_info_init(&binfo_dyn, nbits);

 assert_zu_eq(bitmap_size(binfo), bitmap_size(&binfo_dyn),
     "Unexpected difference between static and dynamic initialization, "
     "nbits=%zu", nbits);
 assert_zu_eq(binfo->nbits, binfo_dyn.nbits,
     "Unexpected difference between static and dynamic initialization, "
     "nbits=%zu", nbits);
 assert_zu_eq(binfo->ngroups, binfo_dyn.ngroups,
     "Unexpected difference between static and dynamic initialization");

}
