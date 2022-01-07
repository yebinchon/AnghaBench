
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ceph_bvec_iter {int dummy; } ;


 int bv ;
 int ceph_bvec_iter_advance (struct ceph_bvec_iter*,int ) ;
 int ceph_bvec_iter_advance_step (struct ceph_bvec_iter*,int ,int ) ;
 int zero_bvec (int *) ;

__attribute__((used)) static void zero_bvecs(struct ceph_bvec_iter *bvec_pos, u32 off, u32 bytes)
{
 struct ceph_bvec_iter it = *bvec_pos;

 ceph_bvec_iter_advance(&it, off);
 ceph_bvec_iter_advance_step(&it, bytes, ({
  zero_bvec(&bv);
 }));
}
