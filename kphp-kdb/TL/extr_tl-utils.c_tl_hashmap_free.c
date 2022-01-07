
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_hashmap {int size; int h; } ;


 int tl_zzfree (int ,int) ;
 int zfree (struct tl_hashmap*,int) ;

void tl_hashmap_free (struct tl_hashmap **V) {
  struct tl_hashmap *H = *V;
  if (H == ((void*)0)) {
    return;
  }
  tl_zzfree (H->h, (H->size * sizeof (void *)));
  zfree (H, sizeof (struct tl_hashmap));
  *V = ((void*)0);
}
