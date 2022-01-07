
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {double percent; struct TYPE_7__* parent; } ;
typedef TYPE_1__ Con ;


 int assert (int) ;
 int con_fix_percent (TYPE_1__*) ;
 scalar_t__ con_rect_size_in_orientation (TYPE_1__*) ;
 double percent_for_1px (TYPE_1__*) ;

bool resize_neighboring_cons(Con *first, Con *second, int px, int ppt) {
    assert(px * ppt == 0);

    Con *parent = first->parent;
    double new_first_percent;
    double new_second_percent;
    if (ppt) {
        new_first_percent = first->percent + ((double)ppt / 100.0);
        new_second_percent = second->percent - ((double)ppt / 100.0);
    } else {

        const double pct = (double)px / (double)con_rect_size_in_orientation(first->parent);
        new_first_percent = first->percent + pct;
        new_second_percent = second->percent - pct;
    }


    if (new_first_percent < percent_for_1px(first) || new_second_percent < percent_for_1px(second)) {
        return 0;
    }

    first->percent = new_first_percent;
    second->percent = new_second_percent;
    con_fix_percent(parent);
    return 1;
}
