
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; } ;
struct TYPE_4__ {TYPE_1__ font; } ;


 TYPE_2__ config ;

int render_deco_height(void) {
    int deco_height = config.font.height + 4;
    if (config.font.height & 0x01)
        ++deco_height;
    return deco_height;
}
