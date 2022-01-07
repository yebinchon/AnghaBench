
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int adjacent_t ;
struct TYPE_7__ {scalar_t__ x; scalar_t__ width; scalar_t__ y; scalar_t__ height; } ;
struct TYPE_8__ {TYPE_1__ rect; } ;
typedef TYPE_2__ Con ;


 int ADJ_LEFT_SCREEN_EDGE ;
 int ADJ_LOWER_SCREEN_EDGE ;
 int ADJ_NONE ;
 int ADJ_RIGHT_SCREEN_EDGE ;
 int ADJ_UPPER_SCREEN_EDGE ;
 TYPE_2__* con_get_workspace (TYPE_2__*) ;
 scalar_t__ con_is_floating (TYPE_2__*) ;

adjacent_t con_adjacent_borders(Con *con) {
    adjacent_t result = ADJ_NONE;


    if (con_is_floating(con))
        return result;

    Con *workspace = con_get_workspace(con);
    if (con->rect.x == workspace->rect.x)
        result |= ADJ_LEFT_SCREEN_EDGE;
    if (con->rect.x + con->rect.width == workspace->rect.x + workspace->rect.width)
        result |= ADJ_RIGHT_SCREEN_EDGE;
    if (con->rect.y == workspace->rect.y)
        result |= ADJ_UPPER_SCREEN_EDGE;
    if (con->rect.y + con->rect.height == workspace->rect.y + workspace->rect.height)
        result |= ADJ_LOWER_SCREEN_EDGE;
    return result;
}
