
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
struct iov_iter {int nr_segs; int iov; } ;
struct bio_map_data {int iov; struct iov_iter iter; } ;
typedef int gfp_t ;


 int UIO_MAXIOV ;
 int iov ;
 struct bio_map_data* kmalloc (int ,int ) ;
 int memcpy (int ,int ,int) ;
 int struct_size (struct bio_map_data*,int ,int) ;

__attribute__((used)) static struct bio_map_data *bio_alloc_map_data(struct iov_iter *data,
            gfp_t gfp_mask)
{
 struct bio_map_data *bmd;
 if (data->nr_segs > UIO_MAXIOV)
  return ((void*)0);

 bmd = kmalloc(struct_size(bmd, iov, data->nr_segs), gfp_mask);
 if (!bmd)
  return ((void*)0);
 memcpy(bmd->iov, data->iov, sizeof(struct iovec) * data->nr_segs);
 bmd->iter = *data;
 bmd->iter.iov = bmd->iov;
 return bmd;
}
