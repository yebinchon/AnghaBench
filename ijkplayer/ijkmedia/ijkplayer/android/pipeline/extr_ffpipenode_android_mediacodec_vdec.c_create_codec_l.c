
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int codec_name; int mime_type; } ;
typedef TYPE_2__ ijkmp_mediacodecinfo_context ;
struct TYPE_9__ {TYPE_3__* opaque; } ;
struct TYPE_8__ {int quirk_reconfigure_with_new_codec; int n_buf_out; int frame_rotate_degrees; TYPE_1__* codecpar; int frame_height; int frame_width; scalar_t__* acodec_name; int * jsurface; TYPE_2__ mcc; } ;
struct TYPE_6__ {int height; int width; } ;
typedef int SDL_AMediaCodec ;
typedef int JNIEnv ;
typedef TYPE_3__ IJKFF_Pipenode_Opaque ;
typedef TYPE_4__ IJKFF_Pipenode ;


 int ALOGD (char*,int ) ;
 int * SDL_AMediaCodecDummy_create () ;
 int * SDL_AMediaCodecJava_createByCodecName (int *,int ) ;
 int * SDL_AMediaCodecJava_createDecoderByType (int *,int ) ;
 scalar_t__ strncasecmp (int ,char*,int) ;
 int strncpy (scalar_t__*,int ,int) ;

__attribute__((used)) static SDL_AMediaCodec *create_codec_l(JNIEnv *env, IJKFF_Pipenode *node)
{
    IJKFF_Pipenode_Opaque *opaque = node->opaque;
    ijkmp_mediacodecinfo_context *mcc = &opaque->mcc;
    SDL_AMediaCodec *acodec = ((void*)0);

    if (opaque->jsurface == ((void*)0)) {

        acodec = SDL_AMediaCodecDummy_create();
    } else {
        acodec = SDL_AMediaCodecJava_createByCodecName(env, mcc->codec_name);
        if (acodec) {
            strncpy(opaque->acodec_name, mcc->codec_name, sizeof(opaque->acodec_name) / sizeof(*opaque->acodec_name));
            opaque->acodec_name[sizeof(opaque->acodec_name) / sizeof(*opaque->acodec_name) - 1] = 0;
        }
    }






    if (acodec) {

        opaque->quirk_reconfigure_with_new_codec = 1;






        if (0 == strncasecmp(mcc->codec_name, "OMX.TI.DUCATI1.", 15)) {

            opaque->n_buf_out = 1;
            ALOGD("using buffered output for %s", mcc->codec_name);
        }
    }

    if (opaque->frame_rotate_degrees == 90 || opaque->frame_rotate_degrees == 270) {
        opaque->frame_width = opaque->codecpar->height;
        opaque->frame_height = opaque->codecpar->width;
    } else {
        opaque->frame_width = opaque->codecpar->width;
        opaque->frame_height = opaque->codecpar->height;
    }

    return acodec;
}
