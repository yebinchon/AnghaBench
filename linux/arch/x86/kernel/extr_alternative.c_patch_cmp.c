
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_poke_loc {void const* addr; } ;



__attribute__((used)) static int patch_cmp(const void *key, const void *elt)
{
 struct text_poke_loc *tp = (struct text_poke_loc *) elt;

 if (key < tp->addr)
  return -1;
 if (key > tp->addr)
  return 1;
 return 0;
}
