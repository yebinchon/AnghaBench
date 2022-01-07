
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int format; } ;
struct TYPE_13__ {int format; } ;
typedef TYPE_1__ SDL_VoutOverlay ;
typedef TYPE_2__ IJK_GLES2_Renderer ;


 int ALOGE (char*,char*,int) ;
 int GL_EXTENSIONS ;
 int GL_RENDERER ;
 int GL_VENDOR ;
 int GL_VERSION ;
 TYPE_2__* IJK_GLES2_Renderer_create_rgb565 () ;
 TYPE_2__* IJK_GLES2_Renderer_create_rgb888 () ;
 TYPE_2__* IJK_GLES2_Renderer_create_rgbx8888 () ;
 TYPE_2__* IJK_GLES2_Renderer_create_yuv420p () ;
 TYPE_2__* IJK_GLES2_Renderer_create_yuv420sp () ;
 TYPE_2__* IJK_GLES2_Renderer_create_yuv420sp_vtb (TYPE_1__*) ;
 TYPE_2__* IJK_GLES2_Renderer_create_yuv444p10le () ;
 int IJK_GLES2_printString (char*,int ) ;
IJK_GLES2_Renderer *IJK_GLES2_Renderer_create(SDL_VoutOverlay *overlay)
{
    if (!overlay)
        return ((void*)0);

    IJK_GLES2_printString("Version", GL_VERSION);
    IJK_GLES2_printString("Vendor", GL_VENDOR);
    IJK_GLES2_printString("Renderer", GL_RENDERER);
    IJK_GLES2_printString("Extensions", GL_EXTENSIONS);

    IJK_GLES2_Renderer *renderer = ((void*)0);
    switch (overlay->format) {
        case 132: renderer = IJK_GLES2_Renderer_create_rgb565(); break;
        case 131: renderer = IJK_GLES2_Renderer_create_rgb888(); break;
        case 130: renderer = IJK_GLES2_Renderer_create_rgbx8888(); break;




        case 129: renderer = IJK_GLES2_Renderer_create_yuv420p(); break;
        case 135: renderer = IJK_GLES2_Renderer_create_yuv420p(); break;
        case 134: renderer = IJK_GLES2_Renderer_create_yuv444p10le(); break;
        default:
            ALOGE("[GLES2] unknown format %4s(%d)\n", (char *)&overlay->format, overlay->format);
            return ((void*)0);
    }

    renderer->format = overlay->format;
    return renderer;
}
