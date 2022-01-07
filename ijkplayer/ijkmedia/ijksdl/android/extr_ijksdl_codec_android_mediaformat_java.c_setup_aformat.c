
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jobject ;
struct TYPE_5__ {int func_setBuffer; int func_setInt32; int func_getInt32; int func_delete; TYPE_1__* opaque; } ;
struct TYPE_4__ {int android_media_format; } ;
typedef TYPE_1__ SDL_AMediaFormat_Opaque ;
typedef TYPE_2__ SDL_AMediaFormat ;


 int SDL_AMediaFormatJava_delete ;
 int SDL_AMediaFormatJava_getInt32 ;
 int SDL_AMediaFormatJava_setBuffer ;
 int SDL_AMediaFormatJava_setInt32 ;

__attribute__((used)) static void setup_aformat(SDL_AMediaFormat *aformat, jobject android_media_format) {
    SDL_AMediaFormat_Opaque *opaque = aformat->opaque;
    opaque->android_media_format = android_media_format;

    aformat->func_delete = SDL_AMediaFormatJava_delete;
    aformat->func_getInt32 = SDL_AMediaFormatJava_getInt32;
    aformat->func_setInt32 = SDL_AMediaFormatJava_setInt32;
    aformat->func_setBuffer = SDL_AMediaFormatJava_setBuffer;
}
