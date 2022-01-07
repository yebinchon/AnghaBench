
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int format; } ;
typedef TYPE_1__ SDL_VoutOverlay ;
typedef TYPE_1__ const ANativeWindow_Buffer ;



 int android_render_rgb565_on_rgb565 (TYPE_1__ const*,TYPE_1__ const*) ;
 int assert (TYPE_1__ const*) ;

__attribute__((used)) static int android_render_on_rgb565(ANativeWindow_Buffer *out_buffer, const SDL_VoutOverlay *overlay)
{
    assert(out_buffer);
    assert(overlay);

    switch (overlay->format) {
    case 128: {
        return android_render_rgb565_on_rgb565(out_buffer, overlay);
    }
    }

    return -1;
}
