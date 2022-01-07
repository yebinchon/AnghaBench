
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint32_t ;
struct paint_info {int pool_count; int end; unsigned int free; unsigned int* pools; int nr_bits; } ;


 int BUG (char*,unsigned int) ;
 unsigned int DIV_ROUND_UP (int ,int) ;
 unsigned int POOL_SIZE ;
 int REALLOC_ARRAY (unsigned int*,int) ;
 unsigned int xmalloc (unsigned int) ;

__attribute__((used)) static uint32_t *paint_alloc(struct paint_info *info)
{
 unsigned nr = DIV_ROUND_UP(info->nr_bits, 32);
 unsigned size = nr * sizeof(uint32_t);
 void *p;
 if (!info->pool_count || size > info->end - info->free) {
  if (size > POOL_SIZE)
   BUG("pool size too small for %d in paint_alloc()",
       size);
  info->pool_count++;
  REALLOC_ARRAY(info->pools, info->pool_count);
  info->free = xmalloc(POOL_SIZE);
  info->pools[info->pool_count - 1] = info->free;
  info->end = info->free + POOL_SIZE;
 }
 p = info->free;
 info->free += size;
 return p;
}
