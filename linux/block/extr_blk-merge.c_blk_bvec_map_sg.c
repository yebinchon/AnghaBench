
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct bio_vec {unsigned int bv_len; unsigned int bv_offset; struct page* bv_page; } ;


 unsigned int PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 struct scatterlist* blk_next_sg (struct scatterlist**,struct scatterlist*) ;
 int get_max_segment_size (struct request_queue*,unsigned int) ;
 unsigned int min (int ,unsigned int) ;
 int sg_set_page (struct scatterlist*,struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned blk_bvec_map_sg(struct request_queue *q,
  struct bio_vec *bvec, struct scatterlist *sglist,
  struct scatterlist **sg)
{
 unsigned nbytes = bvec->bv_len;
 unsigned nsegs = 0, total = 0;

 while (nbytes > 0) {
  unsigned offset = bvec->bv_offset + total;
  unsigned len = min(get_max_segment_size(q, offset), nbytes);
  struct page *page = bvec->bv_page;
  page += (offset >> PAGE_SHIFT);
  offset &= ~PAGE_MASK;

  *sg = blk_next_sg(sg, sglist);
  sg_set_page(*sg, page, len, offset);

  total += len;
  nbytes -= len;
  nsegs++;
 }

 return nsegs;
}
