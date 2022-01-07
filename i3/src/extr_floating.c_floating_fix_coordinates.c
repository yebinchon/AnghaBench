
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double int32_t ;
struct TYPE_7__ {int x; double y; int width; int height; } ;
struct TYPE_9__ {TYPE_1__ rect; } ;
struct TYPE_8__ {double x; double y; double width; double height; } ;
typedef TYPE_2__ Rect ;
typedef TYPE_3__ Con ;


 int DLOG (char*,...) ;

void floating_fix_coordinates(Con *con, Rect *old_rect, Rect *new_rect) {
    DLOG("Fixing coordinates of floating window %p (rect (%d, %d), %d x %d)\n",
         con, con->rect.x, con->rect.y, con->rect.width, con->rect.height);
    DLOG("old_rect = (%d, %d), %d x %d\n",
         old_rect->x, old_rect->y, old_rect->width, old_rect->height);
    DLOG("new_rect = (%d, %d), %d x %d\n",
         new_rect->x, new_rect->y, new_rect->width, new_rect->height);


    int32_t rel_x = con->rect.x - old_rect->x + (int32_t)(con->rect.width / 2);
    int32_t rel_y = con->rect.y - old_rect->y + (int32_t)(con->rect.height / 2);


    DLOG("rel_x = %d, rel_y = %d, fraction_x = %f, fraction_y = %f, output->w = %d, output->h = %d\n",
         rel_x, rel_y, (double)rel_x / old_rect->width, (double)rel_y / old_rect->height,
         old_rect->width, old_rect->height);

    con->rect.x = (int32_t)new_rect->x + (double)(rel_x * (int32_t)new_rect->width) / (int32_t)old_rect->width - (int32_t)(con->rect.width / 2);
    con->rect.y = (int32_t)new_rect->y + (double)(rel_y * (int32_t)new_rect->height) / (int32_t)old_rect->height - (int32_t)(con->rect.height / 2);
    DLOG("Resulting coordinates: x = %d, y = %d\n", con->rect.x, con->rect.y);
}
