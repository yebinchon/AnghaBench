
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_VoutOverlay ;
typedef int ANativeWindow_Buffer ;


 int android_render_rgb_on_rgb (int *,int const*,int) ;

__attribute__((used)) static int android_render_rgb565_on_rgb565(ANativeWindow_Buffer *out_buffer, const SDL_VoutOverlay *overlay)
{
    return android_render_rgb_on_rgb(out_buffer, overlay, 16);
}
