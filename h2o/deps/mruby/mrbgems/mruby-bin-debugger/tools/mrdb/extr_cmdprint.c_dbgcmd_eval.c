
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrdb_state ;
typedef int mrb_state ;
typedef int dbgcmd_state ;


 int dbgcmd_print (int *,int *) ;

dbgcmd_state
dbgcmd_eval(mrb_state *mrb, mrdb_state *mrdb)
{
  return dbgcmd_print(mrb, mrdb);
}
