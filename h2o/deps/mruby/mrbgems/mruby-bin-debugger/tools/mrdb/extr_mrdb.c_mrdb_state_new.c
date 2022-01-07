
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; int print_no; int dbg; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;


 int MAX_COMMAND_LINE ;
 int memset (TYPE_1__*,int ,int) ;
 int mrb_debug_context_get (int *) ;
 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static mrdb_state*
mrdb_state_new(mrb_state *mrb)
{
  mrdb_state *mrdb = (mrdb_state*)mrb_malloc(mrb, sizeof(mrdb_state));

  memset(mrdb, 0, sizeof(mrdb_state));

  mrdb->dbg = mrb_debug_context_get(mrb);
  mrdb->command = (char*)mrb_malloc(mrb, MAX_COMMAND_LINE+1);
  mrdb->print_no = 1;

  return mrdb;
}
