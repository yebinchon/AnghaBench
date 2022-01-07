
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gravity; scalar_t__ layer_width; scalar_t__ layer_height; float frame_width; float frame_height; float frame_sar_num; float frame_sar_den; float* vertices; } ;
typedef TYPE_1__ IJK_GLES2_Renderer ;


 int ALOGE (char*,...) ;
 float FFMAX (float const,float const) ;
 float FFMIN (float const,float const) ;



 int IJK_GLES2_Renderer_Vertices_reset (TYPE_1__*) ;

__attribute__((used)) static void IJK_GLES2_Renderer_Vertices_apply(IJK_GLES2_Renderer *renderer)
{
    switch (renderer->gravity) {
        case 129:
            break;
        case 128:
            break;
        case 130:
            IJK_GLES2_Renderer_Vertices_reset(renderer);
            return;
        default:
            ALOGE("[GLES2] unknown gravity %d\n", renderer->gravity);
            IJK_GLES2_Renderer_Vertices_reset(renderer);
            return;
    }

    if (renderer->layer_width <= 0 ||
        renderer->layer_height <= 0 ||
        renderer->frame_width <= 0 ||
        renderer->frame_height <= 0)
    {
        ALOGE("[GLES2] invalid width/height for gravity aspect\n");
        IJK_GLES2_Renderer_Vertices_reset(renderer);
        return;
    }

    float width = renderer->frame_width;
    float height = renderer->frame_height;

    if (renderer->frame_sar_num > 0 && renderer->frame_sar_den > 0) {
        width = width * renderer->frame_sar_num / renderer->frame_sar_den;
    }

    const float dW = (float)renderer->layer_width / width;
    const float dH = (float)renderer->layer_height / height;
    float dd = 1.0f;
    float nW = 1.0f;
    float nH = 1.0f;

    switch (renderer->gravity) {
        case 128: dd = FFMAX(dW, dH); break;
        case 129: dd = FFMIN(dW, dH); break;
    }

    nW = (width * dd / (float)renderer->layer_width);
    nH = (height * dd / (float)renderer->layer_height);

    renderer->vertices[0] = - nW;
    renderer->vertices[1] = - nH;
    renderer->vertices[2] = nW;
    renderer->vertices[3] = - nH;
    renderer->vertices[4] = - nW;
    renderer->vertices[5] = nH;
    renderer->vertices[6] = nW;
    renderer->vertices[7] = nH;
}
