
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DEFINE_MUTEX ;


 int ENOMEM ;
 unsigned long _PAGE_TABLE_SIZE ;
 scalar_t__ base_pgt_cache ;
 scalar_t__ kmem_cache_create (char*,unsigned long,unsigned long,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int base_pgt_cache_init(void)
{
 static DEFINE_MUTEX(base_pgt_cache_mutex);
 unsigned long sz = _PAGE_TABLE_SIZE;

 if (base_pgt_cache)
  return 0;
 mutex_lock(&base_pgt_cache_mutex);
 if (!base_pgt_cache)
  base_pgt_cache = kmem_cache_create("base_pgt", sz, sz, 0, ((void*)0));
 mutex_unlock(&base_pgt_cache_mutex);
 return base_pgt_cache ? 0 : -ENOMEM;
}
