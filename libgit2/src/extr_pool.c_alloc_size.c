
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int item_size; } ;
typedef TYPE_1__ git_pool ;



__attribute__((used)) static size_t alloc_size(git_pool *pool, size_t count)
{
 const size_t align = sizeof(void *) - 1;

 if (pool->item_size > 1) {
  const size_t item_size = (pool->item_size + align) & ~align;
  return item_size * count;
 }

 return (count + align) & ~align;
}
