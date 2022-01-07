
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmabounce_pool {unsigned long size; scalar_t__ pool; scalar_t__ allocs; } ;
struct device {int dummy; } ;


 int DO_STATS (scalar_t__) ;
 int ENOMEM ;
 scalar_t__ dma_pool_create (char const*,struct device*,unsigned long,int ,int ) ;

__attribute__((used)) static int dmabounce_init_pool(struct dmabounce_pool *pool, struct device *dev,
  const char *name, unsigned long size)
{
 pool->size = size;
 DO_STATS(pool->allocs = 0);
 pool->pool = dma_pool_create(name, dev, size,
         0 ,
         0 );

 return pool->pool ? 0 : -ENOMEM;
}
