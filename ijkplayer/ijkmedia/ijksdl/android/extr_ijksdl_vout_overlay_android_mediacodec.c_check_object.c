
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_4__ {TYPE_2__* opaque_class; int opaque; } ;
typedef TYPE_1__ SDL_VoutOverlay ;


 int ALOGE (char*,int ,char const*) ;
 TYPE_2__ g_vout_overlay_amediacodec_class ;

__attribute__((used)) inline static bool check_object(SDL_VoutOverlay* object, const char *func_name)
{
    if (!object || !object->opaque || !object->opaque_class) {
        ALOGE("%s.%s: invalid pipeline\n", object->opaque_class->name, func_name);
        return 0;
    }

    if (object->opaque_class != &g_vout_overlay_amediacodec_class) {
        ALOGE("%s.%s: unsupported method\n", object->opaque_class->name, func_name);
        return 0;
    }

    return 1;
}
