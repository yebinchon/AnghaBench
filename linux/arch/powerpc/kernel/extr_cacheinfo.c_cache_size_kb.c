
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;


 int ENODEV ;
 scalar_t__ cache_size (struct cache const*,unsigned int*) ;

__attribute__((used)) static int cache_size_kb(const struct cache *cache, unsigned int *ret)
{
 unsigned int size;

 if (cache_size(cache, &size))
  return -ENODEV;

 *ret = size / 1024;
 return 0;
}
