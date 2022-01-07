
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_act_extra {int flags; } ;



int need_dup (struct tl_act_extra *extra) {
  return !(extra->flags & 1);
}
