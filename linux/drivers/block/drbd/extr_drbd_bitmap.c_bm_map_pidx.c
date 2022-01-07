
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_bitmap {int dummy; } ;


 unsigned long* __bm_map_pidx (struct drbd_bitmap*,unsigned int) ;

__attribute__((used)) static unsigned long *bm_map_pidx(struct drbd_bitmap *b, unsigned int idx)
{
 return __bm_map_pidx(b, idx);
}
