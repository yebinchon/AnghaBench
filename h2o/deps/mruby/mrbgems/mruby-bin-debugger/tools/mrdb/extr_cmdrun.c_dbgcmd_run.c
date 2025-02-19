
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_8__ {TYPE_3__* dbg; } ;
typedef TYPE_1__ mrdb_state ;
struct TYPE_9__ {int eException_class; } ;
typedef TYPE_2__ mrb_state ;
struct TYPE_10__ {scalar_t__ xm; scalar_t__ xphase; } ;
typedef TYPE_3__ mrb_debug_context ;
typedef int dbgcmd_state ;


 int DBGST_RESTART ;
 scalar_t__ DBG_INIT ;
 scalar_t__ DBG_PHASE_RUNNING ;
 scalar_t__ DBG_QUIT ;
 scalar_t__ DBG_RUN ;
 struct RClass* mrb_define_class (TYPE_2__*,char*,int ) ;
 int mrb_raise (TYPE_2__*,struct RClass*,char*) ;
 int puts (char*) ;

dbgcmd_state
dbgcmd_run(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_debug_context *dbg = mrdb->dbg;

  if (dbg->xm == DBG_INIT){
    dbg->xm = DBG_RUN;
  }
  else {
    dbg->xm = DBG_QUIT;
    if (dbg->xphase == DBG_PHASE_RUNNING){
      struct RClass *exc;
      puts("Start it from the beginning.");
      exc = mrb_define_class(mrb, "DebuggerRestart", mrb->eException_class);
      mrb_raise(mrb, exc, "Restart mrdb.");
    }
  }

  return DBGST_RESTART;
}
