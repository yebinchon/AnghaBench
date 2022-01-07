
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bio_vec {unsigned int bv_len; unsigned int bv_offset; } ;


 int UINT_MAX ;
 unsigned int get_max_segment_size (struct request_queue const*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int queue_virt_boundary (struct request_queue const*) ;

__attribute__((used)) static bool bvec_split_segs(const struct request_queue *q,
       const struct bio_vec *bv, unsigned *nsegs,
       unsigned *sectors, unsigned max_segs,
       unsigned max_sectors)
{
 unsigned max_len = (min(max_sectors, UINT_MAX >> 9) - *sectors) << 9;
 unsigned len = min(bv->bv_len, max_len);
 unsigned total_len = 0;
 unsigned seg_size = 0;

 while (len && *nsegs < max_segs) {
  seg_size = get_max_segment_size(q, bv->bv_offset + total_len);
  seg_size = min(seg_size, len);

  (*nsegs)++;
  total_len += seg_size;
  len -= seg_size;

  if ((bv->bv_offset + total_len) & queue_virt_boundary(q))
   break;
 }

 *sectors += total_len >> 9;


 return len > 0 || bv->bv_len > max_len;
}
