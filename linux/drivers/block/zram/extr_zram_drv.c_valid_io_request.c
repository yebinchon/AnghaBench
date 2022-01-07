
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zram {unsigned int disksize; } ;
typedef int sector_t ;


 unsigned int SECTOR_SHIFT ;
 int ZRAM_LOGICAL_BLOCK_SIZE ;
 int ZRAM_SECTOR_PER_LOGICAL_BLOCK ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool valid_io_request(struct zram *zram,
  sector_t start, unsigned int size)
{
 u64 end, bound;


 if (unlikely(start & (ZRAM_SECTOR_PER_LOGICAL_BLOCK - 1)))
  return 0;
 if (unlikely(size & (ZRAM_LOGICAL_BLOCK_SIZE - 1)))
  return 0;

 end = start + (size >> SECTOR_SHIFT);
 bound = zram->disksize >> SECTOR_SHIFT;

 if (unlikely(start >= bound || end > bound || start > end))
  return 0;


 return 1;
}
