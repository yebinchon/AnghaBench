
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_1__* ranges; } ;
typedef TYPE_2__ quicly_ranges_t ;
struct TYPE_5__ {scalar_t__ start; scalar_t__ end; } ;


 int quicly_ranges_shrink (TYPE_2__*,size_t,size_t) ;

__attribute__((used)) static inline int merge_update(quicly_ranges_t *ranges, uint64_t start, uint64_t end, size_t slot, size_t end_slot)
{
    if (start < ranges->ranges[slot].start)
        ranges->ranges[slot].start = start;
    ranges->ranges[slot].end = end < ranges->ranges[end_slot].end ? ranges->ranges[end_slot].end : end;

    if (slot != end_slot)
        quicly_ranges_shrink(ranges, slot + 1, end_slot + 1);

    return 0;
}
