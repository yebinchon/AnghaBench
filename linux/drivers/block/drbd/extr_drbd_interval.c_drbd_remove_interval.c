
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct drbd_interval {int rb; } ;


 int augment_callbacks ;
 int rb_erase_augmented (int *,struct rb_root*,int *) ;

void
drbd_remove_interval(struct rb_root *root, struct drbd_interval *this)
{
 rb_erase_augmented(&this->rb, root, &augment_callbacks);
}
