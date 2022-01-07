
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ border_style_t ;
struct TYPE_2__ {scalar_t__ default_floating_border; int default_floating_border_width; scalar_t__ default_border; int default_border_width; } ;
typedef int Con ;


 scalar_t__ BS_NONE ;
 scalar_t__ BS_NORMAL ;
 int * con_inside_floating (int *) ;
 TYPE_1__ config ;
 int logical_px (int) ;

__attribute__((used)) static int border_width_from_style(border_style_t border_style, long border_width, Con *con) {
    if (border_style == BS_NONE) {
        return 0;
    }
    if (border_width >= 0) {
        return logical_px(border_width);
    }

    const bool is_floating = con_inside_floating(con) != ((void*)0);

    if (is_floating && border_style == config.default_floating_border) {
        return config.default_floating_border_width;
    } else if (!is_floating && border_style == config.default_border) {
        return config.default_border_width;
    } else {

        return logical_px(border_style == BS_NORMAL ? 2 : 1);
    }
}
