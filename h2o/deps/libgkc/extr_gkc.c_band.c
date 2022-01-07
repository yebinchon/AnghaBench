
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct gkc_summary {int epsilon; int nr_elems; } ;


 int ullog2 (int) ;

__attribute__((used)) static uint64_t band(struct gkc_summary *s, uint64_t delta)
{
    uint64_t diff;

    diff = 1 + (s->epsilon * s->nr_elems * 2) - delta;

    if (diff == 1) {
        return 0;
    } else {
        return ullog2(diff)/ullog2(2);
    }
}
