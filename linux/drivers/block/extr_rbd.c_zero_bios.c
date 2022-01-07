
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ceph_bio_iter {int dummy; } ;


 int bv ;
 int ceph_bio_iter_advance (struct ceph_bio_iter*,int ) ;
 int ceph_bio_iter_advance_step (struct ceph_bio_iter*,int ,int ) ;
 int zero_bvec (int *) ;

__attribute__((used)) static void zero_bios(struct ceph_bio_iter *bio_pos, u32 off, u32 bytes)
{
 struct ceph_bio_iter it = *bio_pos;

 ceph_bio_iter_advance(&it, off);
 ceph_bio_iter_advance_step(&it, bytes, ({
  zero_bvec(&bv);
 }));
}
