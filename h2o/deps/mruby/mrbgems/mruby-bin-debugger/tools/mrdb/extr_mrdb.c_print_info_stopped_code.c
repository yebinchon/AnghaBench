
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {TYPE_3__* dbg; int srcpath; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;
struct TYPE_6__ {int prvline; int prvfile; } ;


 char* mrb_debug_get_source (int *,TYPE_1__*,int ,int ) ;
 int mrb_debug_list (int *,TYPE_3__*,char*,int ,int ) ;
 int mrb_free (int *,char*) ;

__attribute__((used)) static void
print_info_stopped_code(mrb_state *mrb, mrdb_state *mrdb)
{
  char* file = mrb_debug_get_source(mrb, mrdb, mrdb->srcpath, mrdb->dbg->prvfile);
  uint16_t lineno = mrdb->dbg->prvline;
  if (file != ((void*)0)) {
    mrb_debug_list(mrb, mrdb->dbg, file, lineno, lineno);
    mrb_free(mrb, file);
  }
}
