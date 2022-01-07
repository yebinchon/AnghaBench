
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num_ranges; int capacity; int * ranges; } ;
typedef TYPE_1__ quicly_ranges_t ;
typedef int quicly_range_t ;


 int MOVE (int *,int *,size_t) ;
 int assert (int) ;
 int * realloc (int *,size_t) ;

void quicly_ranges_shrink(quicly_ranges_t *ranges, size_t start, size_t end)
{
    assert(start < end);

    MOVE(ranges->ranges + start, ranges->ranges + end, ranges->num_ranges - end);
    ranges->num_ranges -= end - start;
    if (ranges->capacity > 4 && ranges->num_ranges * 3 <= ranges->capacity) {
        size_t new_capacity = ranges->capacity / 2;
        quicly_range_t *new_ranges = realloc(ranges->ranges, new_capacity * sizeof(*new_ranges));
        if (new_ranges != ((void*)0)) {
            ranges->ranges = new_ranges;
            ranges->capacity = new_capacity;
        }
    }
}
