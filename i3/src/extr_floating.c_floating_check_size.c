
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int min_width; int base_width; int min_height; int base_height; int max_width; int max_height; double min_aspect_ratio; double max_aspect_ratio; int height_increment; int width_increment; } ;
typedef TYPE_2__ i3Window ;
struct TYPE_17__ {int floating_minimum_height; int floating_minimum_width; int floating_maximum_height; int floating_maximum_width; } ;
struct TYPE_13__ {int width; int height; } ;
struct TYPE_16__ {int border_width; scalar_t__ fullscreen_mode; TYPE_1__ rect; TYPE_2__* window; } ;
struct TYPE_15__ {int width; int height; } ;
typedef TYPE_3__ Rect ;
typedef TYPE_4__ Con ;


 scalar_t__ BS_NORMAL ;
 scalar_t__ CF_NONE ;
 scalar_t__ con_border_style (TYPE_4__*) ;
 TYPE_3__ con_border_style_rect (TYPE_4__*) ;
 TYPE_4__* con_descend_focused (TYPE_4__*) ;
 TYPE_7__ config ;
 void* max (scalar_t__,int const) ;
 void* min (int,int) ;
 scalar_t__ render_deco_height () ;
 double round (double) ;
 TYPE_3__ total_outputs_dimensions () ;

void floating_check_size(Con *floating_con, bool prefer_height) {

    const int floating_sane_min_height = 50;
    const int floating_sane_min_width = 75;
    Rect floating_sane_max_dimensions;
    Con *focused_con = con_descend_focused(floating_con);

    Rect border_rect = con_border_style_rect(focused_con);


    border_rect.width = -border_rect.width;
    border_rect.width += 2 * focused_con->border_width;
    border_rect.height = -border_rect.height;
    border_rect.height += 2 * focused_con->border_width;
    if (con_border_style(focused_con) == BS_NORMAL) {
        border_rect.height += render_deco_height();
    }

    i3Window *window = focused_con->window;
    if (window != ((void*)0)) {


        int min_width = (window->min_width ? window->min_width : window->base_width);
        int min_height = (window->min_height ? window->min_height : window->base_height);
        int base_width = (window->base_width ? window->base_width : window->min_width);
        int base_height = (window->base_height ? window->base_height : window->min_height);

        if (min_width) {
            floating_con->rect.width -= border_rect.width;
            floating_con->rect.width = max(floating_con->rect.width, min_width);
            floating_con->rect.width += border_rect.width;
        }

        if (min_height) {
            floating_con->rect.height -= border_rect.height;
            floating_con->rect.height = max(floating_con->rect.height, min_height);
            floating_con->rect.height += border_rect.height;
        }

        if (window->max_width) {
            floating_con->rect.width -= border_rect.width;
            floating_con->rect.width = min(floating_con->rect.width, window->max_width);
            floating_con->rect.width += border_rect.width;
        }

        if (window->max_height) {
            floating_con->rect.height -= border_rect.height;
            floating_con->rect.height = min(floating_con->rect.height, window->max_height);
            floating_con->rect.height += border_rect.height;
        }
        const double min_ar = window->min_aspect_ratio;
        const double max_ar = window->max_aspect_ratio;
        if (floating_con->fullscreen_mode == CF_NONE && (min_ar > 0 || max_ar > 0)) {




            double width = floating_con->rect.width - window->base_width - border_rect.width;
            double height = floating_con->rect.height - window->base_height - border_rect.height;
            const double ar = (double)width / (double)height;
            double new_ar = -1;
            if (min_ar > 0 && ar < min_ar) {
                new_ar = min_ar;
            } else if (max_ar > 0 && ar > max_ar) {
                new_ar = max_ar;
            }
            if (new_ar > 0) {
                if (prefer_height) {
                    width = round(height * new_ar);
                    height = round(width / new_ar);
                } else {
                    height = round(width / new_ar);
                    width = round(height * new_ar);
                }
                floating_con->rect.width = width + window->base_width + border_rect.width;
                floating_con->rect.height = height + window->base_height + border_rect.height;
            }
        }

        if (window->height_increment &&
            floating_con->rect.height >= base_height + border_rect.height) {
            floating_con->rect.height -= base_height + border_rect.height;
            floating_con->rect.height -= floating_con->rect.height % window->height_increment;
            floating_con->rect.height += base_height + border_rect.height;
        }

        if (window->width_increment &&
            floating_con->rect.width >= base_width + border_rect.width) {
            floating_con->rect.width -= base_width + border_rect.width;
            floating_con->rect.width -= floating_con->rect.width % window->width_increment;
            floating_con->rect.width += base_width + border_rect.width;
        }
    }



    if (config.floating_minimum_height != -1) {
        floating_con->rect.height -= border_rect.height;
        if (config.floating_minimum_height == 0) {
            floating_con->rect.height = max(floating_con->rect.height, floating_sane_min_height);
        } else {
            floating_con->rect.height = max(floating_con->rect.height, config.floating_minimum_height);
        }
        floating_con->rect.height += border_rect.height;
    }

    if (config.floating_minimum_width != -1) {
        floating_con->rect.width -= border_rect.width;
        if (config.floating_minimum_width == 0) {
            floating_con->rect.width = max(floating_con->rect.width, floating_sane_min_width);
        } else {
            floating_con->rect.width = max(floating_con->rect.width, config.floating_minimum_width);
        }
        floating_con->rect.width += border_rect.width;
    }




    floating_sane_max_dimensions = total_outputs_dimensions();
    if (config.floating_maximum_height != -1) {
        floating_con->rect.height -= border_rect.height;
        if (config.floating_maximum_height == 0) {
            floating_con->rect.height = min(floating_con->rect.height, floating_sane_max_dimensions.height);
        } else {
            floating_con->rect.height = min(floating_con->rect.height, config.floating_maximum_height);
        }
        floating_con->rect.height += border_rect.height;
    }

    if (config.floating_maximum_width != -1) {
        floating_con->rect.width -= border_rect.width;
        if (config.floating_maximum_width == 0) {
            floating_con->rect.width = min(floating_con->rect.width, floating_sane_max_dimensions.width);
        } else {
            floating_con->rect.width = min(floating_con->rect.width, config.floating_maximum_width);
        }
        floating_con->rect.width += border_rect.width;
    }
}
