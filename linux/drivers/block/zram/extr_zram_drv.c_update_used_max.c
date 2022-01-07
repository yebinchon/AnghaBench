
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_used_pages; } ;
struct zram {TYPE_1__ stats; } ;


 unsigned long atomic_long_cmpxchg (int *,unsigned long,unsigned long const) ;
 unsigned long atomic_long_read (int *) ;

__attribute__((used)) static inline void update_used_max(struct zram *zram,
     const unsigned long pages)
{
 unsigned long old_max, cur_max;

 old_max = atomic_long_read(&zram->stats.max_used_pages);

 do {
  cur_max = old_max;
  if (pages > cur_max)
   old_max = atomic_long_cmpxchg(
    &zram->stats.max_used_pages, cur_max, pages);
 } while (old_max != cur_max);
}
