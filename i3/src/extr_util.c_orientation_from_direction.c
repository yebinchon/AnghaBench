
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int orientation_t ;
typedef scalar_t__ direction_t ;


 scalar_t__ D_LEFT ;
 scalar_t__ D_RIGHT ;
 int HORIZ ;
 int VERT ;

orientation_t orientation_from_direction(direction_t direction) {
    return (direction == D_LEFT || direction == D_RIGHT) ? HORIZ : VERT;
}
