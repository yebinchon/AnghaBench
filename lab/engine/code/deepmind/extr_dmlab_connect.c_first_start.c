
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* (* get_temporary_folder ) (int ) ;char const* (* game_type ) (int ) ;char* (* replace_command_line ) (int ,int ) ;} ;
struct TYPE_9__ {int userdata; TYPE_1__ hooks; } ;
struct TYPE_7__ {int supported; } ;
struct TYPE_8__ {TYPE_2__ pbos; int command_line; int runfiles_path; TYPE_4__* dm_ctx; } ;
typedef TYPE_3__ GameContext ;
typedef TYPE_4__ DeepmindContext ;


 int CON_Init () ;
 int Com_Init (char*) ;
 int NET_Init () ;
 int Q_strcat (int ,int,int ) ;
 int Sys_Milliseconds () ;
 int Sys_PlatformInit () ;
 int Sys_SetDefaultInstallPath (int ) ;
 int qglGenBuffers ;
 char* stub1 (int ) ;
 char const* stub2 (int ) ;
 char* stub3 (int ,int ) ;
 int va (char*,char const*) ;

__attribute__((used)) static int first_start(GameContext* gc) {
  DeepmindContext* ctx = gc->dm_ctx;

  Sys_SetDefaultInstallPath(gc->runfiles_path);

  Sys_PlatformInit();
  Sys_Milliseconds();

  const char* dynamic_path = ctx->hooks.get_temporary_folder(ctx->userdata);
  Q_strcat(gc->command_line, sizeof(gc->command_line),
           va(" +set fs_temporarypath \"%s\"", dynamic_path));
  Q_strcat(gc->command_line, sizeof(gc->command_line),
           va(" +set fs_homepath \"%s\"", dynamic_path));

  Q_strcat(gc->command_line, sizeof(gc->command_line),
           va(" +set g_gametype \"%d\"", ctx->hooks.game_type(ctx->userdata)));

  const char* modifiedCommandLine =
      ctx->hooks.replace_command_line(ctx->userdata, gc->command_line);

  Com_Init((char*)modifiedCommandLine);

  NET_Init();
  CON_Init();


  gc->pbos.supported = qglGenBuffers;

  return 0;
}
