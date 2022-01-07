
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {TYPE_1__* dbg; } ;
typedef TYPE_2__ mrdb_state ;
typedef int mrb_state ;
struct TYPE_4__ {char* prvfile; int prvline; } ;


 int printf (char*,char const*,int) ;

__attribute__((used)) static void
print_info_stopped_step_next(mrb_state *mrb, mrdb_state *mrdb)
{
  const char* file = mrdb->dbg->prvfile;
  uint16_t lineno = mrdb->dbg->prvline;
  printf("%s:%d\n", file, lineno);
}
