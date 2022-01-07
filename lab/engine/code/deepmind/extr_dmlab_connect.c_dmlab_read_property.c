
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* read ) (int ,char const*,char const**) ;} ;
struct TYPE_6__ {TYPE_1__ properties; } ;
struct TYPE_7__ {int userdata; TYPE_2__ hooks; } ;
typedef int EnvCApi_PropertyResult ;
typedef TYPE_3__ DeepmindContext ;


 int EnvCApi_PropertyResult_NotFound ;
 int EnvCApi_PropertyResult_PermissionDenied ;
 int EnvCApi_PropertyResult_Success ;
 TYPE_3__* dmlab_context () ;
 int dmlab_fps (void*) ;
 int kReservedEnginePropertyList ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 int stub1 (int ,char const*,char const**) ;
 char* va (char*,int ) ;

EnvCApi_PropertyResult dmlab_read_property(void* context, const char* key,
                                           const char** value) {
  if (strncmp(key, kReservedEnginePropertyList,
              strlen(kReservedEnginePropertyList)) == 0) {
    const char* sub_key = key + strlen(kReservedEnginePropertyList);
    if (sub_key[0] == '.') {
      ++sub_key;
      if (strcmp(sub_key, "fps") == 0) {
        *value = va("%d", dmlab_fps(context));
        return EnvCApi_PropertyResult_Success;
      }
      return EnvCApi_PropertyResult_NotFound;
    } else if (sub_key[0] == '\0') {
      return EnvCApi_PropertyResult_PermissionDenied;
    }
  }
  DeepmindContext* ctx = dmlab_context();
  return ctx->hooks.properties.read(ctx->userdata, key, value);
}
