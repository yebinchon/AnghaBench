
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ height_in_millimeters; scalar_t__ height_in_pixels; } ;


 TYPE_1__* root_screen ;

__attribute__((used)) static long init_dpi_fallback(void) {
    return (double)root_screen->height_in_pixels * 25.4 / (double)root_screen->height_in_millimeters;
}
