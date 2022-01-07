
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ orientation_t ;
typedef scalar_t__ direction_t ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ layout; struct TYPE_9__* parent; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_FLOATING_CON ;
 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,...) ;
 scalar_t__ D_LEFT ;
 scalar_t__ D_UP ;
 scalar_t__ L_STACKED ;
 scalar_t__ L_TABBED ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 TYPE_1__* TAILQ_PREV (TYPE_1__*,int ,int ) ;
 scalar_t__ const con_orientation (TYPE_1__*) ;
 int nodes ;
 int nodes_head ;
 scalar_t__ orientation_from_direction (scalar_t__) ;

bool resize_find_tiling_participants(Con **current, Con **other, direction_t direction, bool both_sides) {
    DLOG("Find two participants for resizing container=%p in direction=%i\n", other, direction);
    Con *first = *current;
    Con *second = ((void*)0);
    if (first == ((void*)0)) {
        DLOG("Current container is NULL, aborting.\n");
        return 0;
    }


    const orientation_t search_orientation = orientation_from_direction(direction);
    const bool dir_backwards = (direction == D_UP || direction == D_LEFT);
    while (first->type != CT_WORKSPACE &&
           first->type != CT_FLOATING_CON &&
           second == ((void*)0)) {


        if ((con_orientation(first->parent) != search_orientation) ||
            (first->parent->layout == L_STACKED) ||
            (first->parent->layout == L_TABBED)) {
            first = first->parent;
            continue;
        }


        if (dir_backwards) {
            second = TAILQ_PREV(first, nodes_head, nodes);
            if (second == ((void*)0) && both_sides == 1) {
                second = TAILQ_NEXT(first, nodes);
            }
        } else {
            second = TAILQ_NEXT(first, nodes);
            if (second == ((void*)0) && both_sides == 1) {
                second = TAILQ_PREV(first, nodes_head, nodes);
            }
        }

        if (second == ((void*)0)) {
            DLOG("No second container in this direction found, trying to look further up in the tree...\n");
            first = first->parent;
        }
    }

    DLOG("Found participants: first=%p and second=%p.\n", first, second);
    *current = first;
    *other = second;
    if (first == ((void*)0) || second == ((void*)0)) {
        DLOG("Could not find two participants for this resize request.\n");
        return 0;
    }

    return 1;
}
