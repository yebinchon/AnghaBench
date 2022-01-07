
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;


 int ENODEV ;
 scalar_t__ cache_get_line_size (struct cache const*,unsigned int*) ;
 scalar_t__ cache_nr_sets (struct cache const*,unsigned int*) ;
 scalar_t__ cache_size (struct cache const*,unsigned int*) ;

__attribute__((used)) static int cache_associativity(const struct cache *cache, unsigned int *ret)
{
 unsigned int line_size;
 unsigned int nr_sets;
 unsigned int size;

 if (cache_nr_sets(cache, &nr_sets))
  goto err;




 if (nr_sets == 1) {
  *ret = 0;
  return 0;
 }

 if (cache_get_line_size(cache, &line_size))
  goto err;
 if (cache_size(cache, &size))
  goto err;

 if (!(nr_sets > 0 && size > 0 && line_size > 0))
  goto err;

 *ret = (size / nr_sets) / line_size;
 return 0;
err:
 return -ENODEV;
}
