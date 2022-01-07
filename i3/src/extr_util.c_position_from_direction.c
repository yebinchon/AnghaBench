
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int position_t ;
typedef scalar_t__ direction_t ;


 int AFTER ;
 int BEFORE ;
 scalar_t__ D_LEFT ;
 scalar_t__ D_UP ;

position_t position_from_direction(direction_t direction) {
    return (direction == D_LEFT || direction == D_UP) ? BEFORE : AFTER;
}
