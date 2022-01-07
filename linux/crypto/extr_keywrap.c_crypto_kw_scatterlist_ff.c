
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; } ;
struct scatter_walk {int dummy; } ;


 int BUG_ON (int) ;
 unsigned int SEMIBSIZE ;
 int scatterwalk_advance (struct scatter_walk*,unsigned int) ;
 int scatterwalk_start (struct scatter_walk*,struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static void crypto_kw_scatterlist_ff(struct scatter_walk *walk,
         struct scatterlist *sg,
         unsigned int end)
{
 unsigned int skip = 0;


 BUG_ON(end < SEMIBSIZE);

 skip = end - SEMIBSIZE;
 while (sg) {
  if (sg->length > skip) {
   scatterwalk_start(walk, sg);
   scatterwalk_advance(walk, skip);
   break;
  } else
   skip -= sg->length;

  sg = sg_next(sg);
 }
}
