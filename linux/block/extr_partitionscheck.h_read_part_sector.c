
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parsed_partitions {int access_beyond_eod; TYPE_1__* bdev; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int bd_disk; } ;
typedef int Sector ;


 scalar_t__ get_capacity (int ) ;
 void* read_dev_sector (TYPE_1__*,scalar_t__,int *) ;

__attribute__((used)) static inline void *read_part_sector(struct parsed_partitions *state,
         sector_t n, Sector *p)
{
 if (n >= get_capacity(state->bdev->bd_disk)) {
  state->access_beyond_eod = 1;
  return ((void*)0);
 }
 return read_dev_sector(state->bdev, n, p);
}
