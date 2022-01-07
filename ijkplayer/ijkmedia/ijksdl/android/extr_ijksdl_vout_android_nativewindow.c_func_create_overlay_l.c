
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_VoutOverlay ;
typedef int SDL_Vout ;



 int * SDL_VoutAMediaCodec_CreateOverlay (int,int,int *) ;
 int * SDL_VoutFFmpeg_CreateOverlay (int,int,int,int *) ;

__attribute__((used)) static SDL_VoutOverlay *func_create_overlay_l(int width, int height, int frame_format, SDL_Vout *vout)
{
    switch (frame_format) {
    case 128:
        return SDL_VoutAMediaCodec_CreateOverlay(width, height, vout);
    default:
        return SDL_VoutFFmpeg_CreateOverlay(width, height, frame_format, vout);
    }
}
