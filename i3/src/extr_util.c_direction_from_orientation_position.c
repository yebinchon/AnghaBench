
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ position_t ;
typedef scalar_t__ orientation_t ;
typedef int direction_t ;


 scalar_t__ BEFORE ;
 int D_DOWN ;
 int D_LEFT ;
 int D_RIGHT ;
 int D_UP ;
 scalar_t__ HORIZ ;

direction_t direction_from_orientation_position(orientation_t orientation, position_t position) {
    if (orientation == HORIZ) {
        return position == BEFORE ? D_LEFT : D_RIGHT;
    } else {
        return position == BEFORE ? D_UP : D_DOWN;
    }
}
