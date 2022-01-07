
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* init ) (int ) ;int (* set_level_cache_settings ) (int ,int ,int ,int ) ;int (* set_error_message ) (int ,char*) ;scalar_t__ (* get_native_app ) (int ) ;} ;
struct TYPE_6__ {int userdata; TYPE_1__ hooks; } ;
struct TYPE_5__ {scalar_t__ vm_mode; int init_called; int level_cache_params; int use_global_level_cache; int use_local_level_cache; int command_line; scalar_t__ is_server; TYPE_3__* dm_ctx; } ;
typedef TYPE_2__ GameContext ;
typedef TYPE_3__ DeepmindContext ;


 int Q_strcat (int ,int,char*) ;
 int RO_BOTTOM_LEFT ;
 int RO_TOP_LEFT ;
 int SCR_RenderOrigin (int ) ;
 int SCR_SkipRendering (int) ;
 scalar_t__ VMI_NATIVE ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int ,char*) ;
 int stub3 (int ,int ,int ,int ) ;
 int stub4 (int ) ;
 char* va (char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int dmlab_init(void* context) {
  GameContext* gc = context;
  DeepmindContext* ctx = gc->dm_ctx;
  if (ctx->hooks.get_native_app(ctx->userdata)) {
    SCR_SkipRendering(0);
    SCR_RenderOrigin(RO_BOTTOM_LEFT);
  } else {
    SCR_SkipRendering(1);
    SCR_RenderOrigin(RO_TOP_LEFT);
  }

  if (gc->vm_mode != VMI_NATIVE) {
    Q_strcat(gc->command_line, sizeof(gc->command_line),
             va(" +set vm_cgame \"%d\""
                " +set vm_game \"%d\""
                " +set vm_ui \"%d\"",
                gc->vm_mode, gc->vm_mode, gc->vm_mode));
  }
  if (gc->is_server) {
    Q_strcat(gc->command_line, sizeof(gc->command_line),
             " +set sv_hostname \"server\""
             " +set sv_fps 20"
             " +set dedicated 1"
             " +set sv_host server"
             " +set sv_allowDownload 1");
  }
  if (gc->init_called) {
    ctx->hooks.set_error_message(
        ctx->userdata, "'init' has already been called previously.\n");
    return 1;
  }
  gc->init_called = 1;
  ctx->hooks.set_level_cache_settings(ctx->userdata, gc->use_local_level_cache,
                                      gc->use_global_level_cache,
                                      gc->level_cache_params);
  return ctx->hooks.init(ctx->userdata);
}
