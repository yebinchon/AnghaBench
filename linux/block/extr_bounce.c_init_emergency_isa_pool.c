
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int ISA_POOL_SIZE ;
 int init_bounce_bioset () ;
 int isa_mutex ;
 int isa_page_pool ;
 int mempool_alloc_pages_isa ;
 int mempool_free_pages ;
 int mempool_init (int *,int ,int ,int ,void*) ;
 scalar_t__ mempool_initialized (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int ) ;

int init_emergency_isa_pool(void)
{
 int ret;

 mutex_lock(&isa_mutex);

 if (mempool_initialized(&isa_page_pool)) {
  mutex_unlock(&isa_mutex);
  return 0;
 }

 ret = mempool_init(&isa_page_pool, ISA_POOL_SIZE, mempool_alloc_pages_isa,
      mempool_free_pages, (void *) 0);
 BUG_ON(ret);

 pr_info("isa pool size: %d pages\n", ISA_POOL_SIZE);
 init_bounce_bioset();
 mutex_unlock(&isa_mutex);
 return 0;
}
