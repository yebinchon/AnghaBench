
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int * dbg; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;
typedef int mrb_debug_context ;
typedef int mrb_debug_bptype ;
typedef int int32_t ;
typedef int dbgcmd_state ;


 char* BREAK_ERR_MSG_INVALIDARG ;
 char* BREAK_ERR_MSG_INVALIDFILE ;
 char* BREAK_ERR_MSG_INVALIDLINENO ;
 char* BREAK_ERR_MSG_NOOVER ;
 char* BREAK_ERR_MSG_NUMOVER ;
 char* BREAK_SET_MSG_CLASS_METHOD ;
 char* BREAK_SET_MSG_LINE ;
 char* BREAK_SET_MSG_METHOD ;
 int DBGST_PROMPT ;
 int mrb_debug_set_break_line (int *,int *,char const*,int ) ;
 int mrb_debug_set_break_method (int *,int *,char*,char*) ;
 int parse_breakcommand (TYPE_1__*,char const**,int *,char**,char**) ;
 int printf (char*,...) ;
 int puts (char*) ;

dbgcmd_state
dbgcmd_break(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_debug_bptype type;
  mrb_debug_context *dbg = mrdb->dbg;
  const char *file = ((void*)0);
  uint32_t line = 0;
  char *cname = ((void*)0);
  char *method = ((void*)0);
  int32_t ret;

  type = parse_breakcommand(mrdb, &file, &line, &cname, &method);
  switch (type) {
    case 136:
      ret = mrb_debug_set_break_line(mrb, dbg, file, line);
      break;
    case 135:
      ret = mrb_debug_set_break_method(mrb, dbg, cname, method);
      break;
    case 134:
    default:
      return DBGST_PROMPT;
  }

  if (ret >= 0) {
    if (type == 136) {
      printf(BREAK_SET_MSG_LINE, ret, file, line);
    }
    else if ((type == 135)&&(cname == ((void*)0))) {
      printf(BREAK_SET_MSG_METHOD, ret, method);
    }
    else {
      printf(BREAK_SET_MSG_CLASS_METHOD, ret, cname, method);
    }
  }
  else {
    switch (ret) {
      case 132:
        printf(BREAK_ERR_MSG_INVALIDLINENO, line, file);
        break;
      case 133:
        printf(BREAK_ERR_MSG_INVALIDFILE, file);
        break;
      case 130:
        puts(BREAK_ERR_MSG_NUMOVER);
        break;
      case 131:
        puts(BREAK_ERR_MSG_NOOVER);
        break;
      case 129:
        puts(BREAK_ERR_MSG_INVALIDARG);
        break;
      case 128:
        puts("T.B.D.");
        break;
      default:
        break;
    }
  }

  return DBGST_PROMPT;
}
