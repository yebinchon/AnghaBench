
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
typedef int gfp_t ;


 struct bio* bio_alloc (int ,int) ;
 struct bio* bio_alloc_bioset (int ,int,int *) ;
 int bioset_initialized (int *) ;
 int drbd_md_io_bio_set ;

struct bio *bio_alloc_drbd(gfp_t gfp_mask)
{
 struct bio *bio;

 if (!bioset_initialized(&drbd_md_io_bio_set))
  return bio_alloc(gfp_mask, 1);

 bio = bio_alloc_bioset(gfp_mask, 1, &drbd_md_io_bio_set);
 if (!bio)
  return ((void*)0);
 return bio;
}
