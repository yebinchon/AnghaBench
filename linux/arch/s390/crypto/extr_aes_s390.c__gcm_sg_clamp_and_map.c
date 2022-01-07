
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_4__ {int sg; } ;
struct gcm_sg_walk {unsigned int walk_bytes; TYPE_1__ walk; int walk_ptr; int walk_bytes_remain; } ;


 void* scatterwalk_clamp (TYPE_1__*,int ) ;
 int scatterwalk_map (TYPE_1__*) ;
 int scatterwalk_start (TYPE_1__*,struct scatterlist*) ;
 struct scatterlist* sg_next (int ) ;

__attribute__((used)) static inline unsigned int _gcm_sg_clamp_and_map(struct gcm_sg_walk *gw)
{
 struct scatterlist *nextsg;

 gw->walk_bytes = scatterwalk_clamp(&gw->walk, gw->walk_bytes_remain);
 while (!gw->walk_bytes) {
  nextsg = sg_next(gw->walk.sg);
  if (!nextsg)
   return 0;
  scatterwalk_start(&gw->walk, nextsg);
  gw->walk_bytes = scatterwalk_clamp(&gw->walk,
         gw->walk_bytes_remain);
 }
 gw->walk_ptr = scatterwalk_map(&gw->walk);
 return gw->walk_bytes;
}
