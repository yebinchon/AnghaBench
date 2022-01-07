
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_act_extra {int flags; int size; } ;


 struct tl_act_extra* malloc (int ) ;
 int memcpy (struct tl_act_extra*,struct tl_act_extra*,int ) ;

struct tl_act_extra *tl_default_act_dup (struct tl_act_extra *extra) {
  struct tl_act_extra *new = malloc (extra->size);
  memcpy (new, extra, extra->size);
  new->flags = (new->flags & ~1) | 2;
  return new;
}
