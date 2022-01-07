
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcm_sg_walk {unsigned int walk_bytes_remain; int * walk_ptr; int walk; } ;


 int scatterwalk_advance (int *,unsigned int) ;
 int scatterwalk_done (int *,int ,unsigned int) ;
 int scatterwalk_unmap (int *) ;

__attribute__((used)) static inline void _gcm_sg_unmap_and_advance(struct gcm_sg_walk *gw,
          unsigned int nbytes)
{
 gw->walk_bytes_remain -= nbytes;
 scatterwalk_unmap(&gw->walk);
 scatterwalk_advance(&gw->walk, nbytes);
 scatterwalk_done(&gw->walk, 0, gw->walk_bytes_remain);
 gw->walk_ptr = ((void*)0);
}
