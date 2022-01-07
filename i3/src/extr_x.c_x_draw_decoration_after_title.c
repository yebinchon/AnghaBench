
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct deco_render_params {TYPE_2__* color; } ;
struct TYPE_9__ {int height; int y; scalar_t__ width; scalar_t__ x; } ;
struct TYPE_10__ {TYPE_1__* parent; TYPE_3__ deco_rect; } ;
struct TYPE_8__ {int background; } ;
struct TYPE_7__ {int frame_buffer; } ;
typedef TYPE_3__ Rect ;
typedef TYPE_4__ Con ;


 int assert (int ) ;
 int draw_util_rectangle (int *,int ,scalar_t__,int ,int,int ) ;
 int font_is_pango () ;
 int logical_px (int) ;
 int x_draw_title_border (TYPE_4__*,struct deco_render_params*) ;

__attribute__((used)) static void x_draw_decoration_after_title(Con *con, struct deco_render_params *p) {
    assert(con->parent != ((void*)0));

    Rect *dr = &(con->deco_rect);




    if (!font_is_pango()) {



        draw_util_rectangle(&(con->parent->frame_buffer), p->color->background,
                            dr->x + dr->width - 2 * logical_px(1),
                            dr->y,
                            2 * logical_px(1),
                            dr->height);
    }


    x_draw_title_border(con, p);
}
