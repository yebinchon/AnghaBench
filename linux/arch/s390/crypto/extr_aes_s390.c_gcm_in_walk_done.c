
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcm_sg_walk {unsigned int buf_bytes; int * buf; int * ptr; } ;


 int _gcm_sg_unmap_and_advance (struct gcm_sg_walk*,unsigned int) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static int gcm_in_walk_done(struct gcm_sg_walk *gw, unsigned int bytesdone)
{
 if (gw->ptr == ((void*)0))
  return 0;

 if (gw->ptr == gw->buf) {
  int n = gw->buf_bytes - bytesdone;
  if (n > 0) {
   memmove(gw->buf, gw->buf + bytesdone, n);
   gw->buf_bytes = n;
  } else
   gw->buf_bytes = 0;
 } else
  _gcm_sg_unmap_and_advance(gw, bytesdone);

 return bytesdone;
}
