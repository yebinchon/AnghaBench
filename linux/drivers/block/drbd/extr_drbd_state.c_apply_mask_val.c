
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union drbd_state {int i; } ;



__attribute__((used)) static union drbd_state
apply_mask_val(union drbd_state os, union drbd_state mask, union drbd_state val)
{
 union drbd_state ns;
 ns.i = (os.i & ~mask.i) | val.i;
 return ns;
}
