
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int num_ranges; TYPE_1__* ranges; } ;
typedef TYPE_2__ quicly_ranges_t ;
struct TYPE_6__ {scalar_t__ start; scalar_t__ end; } ;


 int assert (int) ;
 scalar_t__ insert_at (TYPE_2__*,scalar_t__,scalar_t__,size_t) ;
 int quicly_ranges_shrink (TYPE_2__*,size_t,size_t) ;

int quicly_ranges_subtract(quicly_ranges_t *ranges, uint64_t start, uint64_t end)
{
    size_t shrink_from, slot;

    assert(start <= end);

    if (start == end)
        return 0;

    if (ranges->num_ranges == 0) {
        return 0;
    } else if (end <= ranges->ranges[0].start) {
        return 0;
    } else if (ranges->ranges[ranges->num_ranges - 1].end <= start) {
        return 0;
    }


    for (slot = 0; ranges->ranges[slot].end < start; ++slot)
        ;

    if (end <= ranges->ranges[slot].end) {

        if (end <= ranges->ranges[slot].start)
            return 0;
        if (start <= ranges->ranges[slot].start) {
            ranges->ranges[slot].start = end;
        } else if (end == ranges->ranges[slot].end) {
            ranges->ranges[slot].end = start;
        } else {

            if (insert_at(ranges, end, ranges->ranges[slot].end, slot + 1) != 0)
                return -1;
            ranges->ranges[slot].end = start;
            return 0;
        }

        if (ranges->ranges[slot].start == ranges->ranges[slot].end)
            quicly_ranges_shrink(ranges, slot, slot + 1);
        return 0;
    }


    if (start <= ranges->ranges[slot].start) {
        shrink_from = slot;
    } else {
        ranges->ranges[slot].end = start;
        shrink_from = slot + 1;
    }


    for (++slot; slot != ranges->num_ranges; ++slot) {
        if (end <= ranges->ranges[slot].start)
            break;
        if (end < ranges->ranges[slot].end) {
            ranges->ranges[slot].start = end;
            break;
        }
    }


    if (shrink_from != slot)
        quicly_ranges_shrink(ranges, shrink_from, slot);

    return 0;
}
