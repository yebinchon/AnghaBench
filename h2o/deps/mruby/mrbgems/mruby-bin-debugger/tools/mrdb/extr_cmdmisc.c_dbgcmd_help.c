
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wcnt; int ** words; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;
typedef int mrb_bool ;
typedef int dbgcmd_state ;


 int DBGST_PROMPT ;
 int FALSE ;
 int printf (char*,...) ;
 int show_long_help (int *,int *) ;
 int show_short_help () ;

dbgcmd_state
dbgcmd_help(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_bool is_valid;
  int i;

  switch (mrdb->wcnt) {
  case 0:
  case 1:
    is_valid = show_short_help();
    break;
  case 2:
    is_valid = show_long_help(mrdb->words[1], ((void*)0));
    break;
  case 3:
    is_valid = show_long_help(mrdb->words[1], mrdb->words[2]);
    break;
  default:
    is_valid = FALSE;
    break;
  }

  if (!is_valid) {
    printf("Invalid command \"");
    for (i = 1; i < mrdb->wcnt; i++) {
      printf("%s%s", i == 1 ? "" : " ", mrdb->words[i]);
    }
    printf("\". Try \"help\".\n");
  }

  return DBGST_PROMPT;
}
