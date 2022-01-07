
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct bio_vec {int bv_offset; int bv_len; int bv_page; } ;


 struct scatterlist* blk_next_sg (struct scatterlist**,struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,int ,int ) ;

__attribute__((used)) static inline int __blk_bvec_map_sg(struct bio_vec bv,
  struct scatterlist *sglist, struct scatterlist **sg)
{
 *sg = blk_next_sg(sg, sglist);
 sg_set_page(*sg, bv.bv_page, bv.bv_len, bv.bv_offset);
 return 1;
}
