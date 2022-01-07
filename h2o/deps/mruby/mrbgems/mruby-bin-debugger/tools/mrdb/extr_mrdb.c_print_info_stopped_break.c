
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_12__ {TYPE_7__* dbg; } ;
typedef TYPE_4__ mrdb_state ;
typedef int mrb_state ;
struct TYPE_10__ {char* method_name; char* class_name; } ;
struct TYPE_9__ {char* file; int lineno; } ;
struct TYPE_11__ {TYPE_2__ methodpoint; TYPE_1__ linepoint; } ;
struct TYPE_13__ {int type; int bpno; TYPE_3__ point; } ;
typedef TYPE_5__ mrb_debug_breakpoint ;
typedef scalar_t__ int32_t ;
struct TYPE_14__ {int isCfunc; int stopped_bpno; } ;




 scalar_t__ mrb_debug_get_break (int *,TYPE_7__*,int ,TYPE_5__*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_info_stopped_break(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_debug_breakpoint bp;
  int32_t ret;
  uint16_t lineno;
  const char *file;
  const char *method_name;
  const char *class_name;

  ret = mrb_debug_get_break(mrb, mrdb->dbg, mrdb->dbg->stopped_bpno, &bp);
  if (ret == 0) {
    switch(bp.type) {
      case 129:
        file = bp.point.linepoint.file;
        lineno = bp.point.linepoint.lineno;
        printf("Breakpoint %d, at %s:%d\n", bp.bpno, file, lineno);
        break;
      case 128:
        method_name = bp.point.methodpoint.method_name;
        class_name = bp.point.methodpoint.class_name;
        if (class_name == ((void*)0)) {
          printf("Breakpoint %d, %s\n", bp.bpno, method_name);
        }
        else {
          printf("Breakpoint %d, %s:%s\n", bp.bpno, class_name, method_name);
        }
        if (mrdb->dbg->isCfunc) {
          printf("Stopped before calling the C function.\n");
        }
        break;
      default:
        break;
    }
  }
}
