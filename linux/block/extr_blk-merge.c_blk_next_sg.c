
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_unmark_end (struct scatterlist*) ;

__attribute__((used)) static inline struct scatterlist *blk_next_sg(struct scatterlist **sg,
  struct scatterlist *sglist)
{
 if (!*sg)
  return sglist;
 sg_unmark_end(*sg);
 return sg_next(*sg);
}
