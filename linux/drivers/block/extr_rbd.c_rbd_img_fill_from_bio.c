
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rbd_img_request {int dummy; } ;
struct ceph_file_extent {int member_1; int member_0; } ;
struct ceph_bio_iter {int iter; struct bio* bio; } ;
struct bio {int bi_iter; } ;


 int __rbd_img_fill_from_bio (struct rbd_img_request*,struct ceph_file_extent*,int,struct ceph_bio_iter*) ;

__attribute__((used)) static int rbd_img_fill_from_bio(struct rbd_img_request *img_req,
     u64 off, u64 len, struct bio *bio)
{
 struct ceph_file_extent ex = { off, len };
 struct ceph_bio_iter it = { .bio = bio, .iter = bio->bi_iter };

 return __rbd_img_fill_from_bio(img_req, &ex, 1, &it);
}
