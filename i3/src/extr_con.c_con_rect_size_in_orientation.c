
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int height; int width; } ;
struct TYPE_6__ {TYPE_1__ rect; } ;
typedef TYPE_2__ Con ;


 scalar_t__ HORIZ ;
 scalar_t__ con_orientation (TYPE_2__*) ;

uint32_t con_rect_size_in_orientation(Con *con) {
    return (con_orientation(con) == HORIZ ? con->rect.width : con->rect.height);
}
