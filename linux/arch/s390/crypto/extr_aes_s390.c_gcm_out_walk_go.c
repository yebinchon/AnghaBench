
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcm_sg_walk {scalar_t__ walk_bytes_remain; int nbytes; unsigned int walk_bytes; int * buf; int * ptr; int * walk_ptr; int walk; } ;


 int _gcm_sg_clamp_and_map (struct gcm_sg_walk*) ;
 int scatterwalk_unmap (int *) ;

__attribute__((used)) static int gcm_out_walk_go(struct gcm_sg_walk *gw, unsigned int minbytesneeded)
{
 if (gw->walk_bytes_remain == 0) {
  gw->ptr = ((void*)0);
  gw->nbytes = 0;
  goto out;
 }

 if (!_gcm_sg_clamp_and_map(gw)) {
  gw->ptr = ((void*)0);
  gw->nbytes = 0;
  goto out;
 }

 if (gw->walk_bytes >= minbytesneeded) {
  gw->ptr = gw->walk_ptr;
  gw->nbytes = gw->walk_bytes;
  goto out;
 }

 scatterwalk_unmap(&gw->walk);
 gw->walk_ptr = ((void*)0);

 gw->ptr = gw->buf;
 gw->nbytes = sizeof(gw->buf);

out:
 return gw->nbytes;
}
