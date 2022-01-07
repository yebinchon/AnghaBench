
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* (* next_map ) (int ) ;int (* add_bots ) (int ) ;} ;
struct TYPE_8__ {int userdata; TYPE_1__ hooks; } ;
struct TYPE_7__ {char const* engine_frame_period_msec; TYPE_3__* dm_ctx; } ;
typedef TYPE_2__ GameContext ;
typedef TYPE_3__ DeepmindContext ;


 int Cmd_ExecuteString (char*) ;
 int Com_Frame () ;
 int Cvar_Set (char*,char*) ;
 int exit (int) ;
 int make_map (TYPE_2__*,char const*) ;
 int perror (char*) ;
 char* stub1 (int ) ;
 int stub2 (int ) ;
 char* va (char*,char const*) ;

__attribute__((used)) static void dev_map(GameContext* gc) {
  DeepmindContext* ctx = gc->dm_ctx;
  Cvar_Set("fixedtime", va("%d", gc->engine_frame_period_msec));
  const char* next_map = ctx->hooks.next_map(ctx->userdata);
  if (next_map[0] == '\0') {
    Cmd_ExecuteString("map_restart 0");
    Cmd_ExecuteString("updatecustomitems");
    Com_Frame();
  } else {
    if (!make_map(gc, next_map)) {
      perror(va("Didn't find map '%s'\n", next_map));
      exit(1);
    }
    Cmd_ExecuteString(va("devmap \"%s\"", next_map));
    Com_Frame();
    ctx->hooks.add_bots(ctx->userdata);
  }
}
