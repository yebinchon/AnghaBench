
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcm_sg_walk {int * buf; int walk_ptr; int walk_bytes; int * ptr; } ;


 int _gcm_sg_clamp_and_map (struct gcm_sg_walk*) ;
 int _gcm_sg_unmap_and_advance (struct gcm_sg_walk*,unsigned int) ;
 int memcpy (int ,int *,int) ;
 int min (int ,unsigned int) ;

__attribute__((used)) static int gcm_out_walk_done(struct gcm_sg_walk *gw, unsigned int bytesdone)
{
 int i, n;

 if (gw->ptr == ((void*)0))
  return 0;

 if (gw->ptr == gw->buf) {
  for (i = 0; i < bytesdone; i += n) {
   if (!_gcm_sg_clamp_and_map(gw))
    return i;
   n = min(gw->walk_bytes, bytesdone - i);
   memcpy(gw->walk_ptr, gw->buf + i, n);
   _gcm_sg_unmap_and_advance(gw, n);
  }
 } else
  _gcm_sg_unmap_and_advance(gw, bytesdone);

 return bytesdone;
}
