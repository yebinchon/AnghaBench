
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_connecting; int map_loaded; int engine_frame_period_msec; int server_port; } ;
typedef TYPE_1__ GameContext ;


 int Cmd_ExecuteString (int ) ;
 int Com_Frame () ;
 int Cvar_Set (char*,int ) ;
 int va (char*,int ) ;

__attribute__((used)) static void connect_client(GameContext* gc) {
  Cmd_ExecuteString(va("connect -6 [::1]:%d\n", gc->server_port));
  Cvar_Set("fixedtime", va("%d", gc->engine_frame_period_msec));
  Com_Frame();
  gc->is_connecting = 1;
  gc->map_loaded = 0;
}
