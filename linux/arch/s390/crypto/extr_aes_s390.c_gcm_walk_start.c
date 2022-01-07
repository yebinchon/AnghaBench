
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct gcm_sg_walk {unsigned int walk_bytes_remain; int walk; } ;


 int memset (struct gcm_sg_walk*,int ,int) ;
 int scatterwalk_start (int *,struct scatterlist*) ;

__attribute__((used)) static void gcm_walk_start(struct gcm_sg_walk *gw, struct scatterlist *sg,
      unsigned int len)
{
 memset(gw, 0, sizeof(*gw));
 gw->walk_bytes_remain = len;
 scatterwalk_start(&gw->walk, sg);
}
