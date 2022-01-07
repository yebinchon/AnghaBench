
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; } ;
struct TYPE_5__ {TYPE_1__ deco_rect; int parent; } ;
typedef TYPE_2__ Con ;


 scalar_t__ HORIZ ;
 scalar_t__ con_orientation (int ) ;
 int con_rect_size_in_orientation (int ) ;

double percent_for_1px(Con *con) {
    const int parent_size = con_rect_size_in_orientation(con->parent);

    const int min_size = (con_orientation(con->parent) == HORIZ ? 1 : 1 + con->deco_rect.height);
    return ((double)min_size / (double)parent_size);
}
