
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* command; size_t wcnt; char** words; int dbg; } ;
typedef TYPE_1__ mrdb_state ;
typedef int mrb_state ;
typedef int mrb_debug_breakpoint ;
typedef scalar_t__ mrb_bool ;
typedef size_t int32_t ;


 int BREAK_ERR_MSG_INVALIDBPNO_INFO ;
 char* BREAK_ERR_MSG_NOBPNO_INFO ;
 int BREAK_INFO_MSG_HEADER ;
 scalar_t__ FALSE ;
 size_t MRB_DEBUG_BREAK_INVALID_NO ;
 size_t MRB_DEBUG_OK ;
 scalar_t__ TRUE ;
 size_t mrb_debug_get_break (int *,int ,size_t,int *) ;
 size_t parse_breakpoint_no (char*) ;
 int print_api_common_error (size_t) ;
 int print_breakpoint (int *) ;
 int printf (char*,size_t) ;
 int puts (int ) ;

__attribute__((used)) static void
info_break_select(mrb_state *mrb, mrdb_state *mrdb)
{
  int32_t ret = MRB_DEBUG_OK;
  int32_t bpno = 0;
  char* ps = mrdb->command;
  mrb_debug_breakpoint bp;
  mrb_bool isFirst = TRUE;
  int32_t i;

  for(i=2; i<mrdb->wcnt; i++) {
    ps = mrdb->words[i];
    bpno = parse_breakpoint_no(ps);
    if (bpno == 0) {
      puts(BREAK_ERR_MSG_INVALIDBPNO_INFO);
      break;
    }

    ret = mrb_debug_get_break(mrb, mrdb->dbg, bpno, &bp);
    if (ret == MRB_DEBUG_BREAK_INVALID_NO) {
      printf(BREAK_ERR_MSG_NOBPNO_INFO, bpno);
      break;
    }
    else if (ret != MRB_DEBUG_OK) {
      print_api_common_error(ret);
      break;
    }
    else if (isFirst == TRUE) {
      isFirst = FALSE;
      puts(BREAK_INFO_MSG_HEADER);
    }
    print_breakpoint(&bp);
  }
}
