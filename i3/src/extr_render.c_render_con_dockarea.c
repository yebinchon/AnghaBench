
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int width; } ;
struct TYPE_14__ {int y; TYPE_1__ rect; int x; } ;
typedef TYPE_5__ render_params ;
struct TYPE_13__ {scalar_t__ height; int width; int y; int x; } ;
struct TYPE_12__ {scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_11__ {scalar_t__ height; } ;
struct TYPE_15__ {scalar_t__ layout; TYPE_4__ rect; TYPE_3__ deco_rect; TYPE_2__ geometry; } ;
typedef TYPE_6__ Con ;


 scalar_t__ L_DOCKAREA ;
 int assert (int) ;

__attribute__((used)) static void render_con_dockarea(Con *con, Con *child, render_params *p) {
    assert(con->layout == L_DOCKAREA);

    child->rect.x = p->x;
    child->rect.y = p->y;
    child->rect.width = p->rect.width;
    child->rect.height = child->geometry.height;

    child->deco_rect.x = 0;
    child->deco_rect.y = 0;
    child->deco_rect.width = 0;
    child->deco_rect.height = 0;
    p->y += child->rect.height;
}
