
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int binder_alloc_lru ;
 int binder_shrinker ;
 int list_lru_destroy (int *) ;
 int list_lru_init (int *) ;
 int register_shrinker (int *) ;

int binder_alloc_shrinker_init(void)
{
 int ret = list_lru_init(&binder_alloc_lru);

 if (ret == 0) {
  ret = register_shrinker(&binder_shrinker);
  if (ret)
   list_lru_destroy(&binder_alloc_lru);
 }
 return ret;
}
