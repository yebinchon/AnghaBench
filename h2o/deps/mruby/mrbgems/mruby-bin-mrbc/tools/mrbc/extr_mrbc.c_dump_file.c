
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mrbc_args {char* initname; char* prog; int flags; scalar_t__ remove_lv; } ;
struct TYPE_2__ {int * irep; } ;
struct RProc {TYPE_1__ body; } ;
typedef int mrb_state ;
typedef int mrb_irep ;
typedef int FILE ;


 int MRB_DUMP_INVALID_ARGUMENT ;
 int MRB_DUMP_OK ;
 int fprintf (int ,char*,char*,...) ;
 int mrb_dump_irep_binary (int *,int *,int ,int *) ;
 int mrb_dump_irep_cfunc (int *,int *,int ,int *,char*) ;
 int mrb_irep_remove_lv (int *,int *) ;
 int stderr ;

__attribute__((used)) static int
dump_file(mrb_state *mrb, FILE *wfp, const char *outfile, struct RProc *proc, struct mrbc_args *args)
{
  int n = MRB_DUMP_OK;
  mrb_irep *irep = proc->body.irep;

  if (args->remove_lv) {
    mrb_irep_remove_lv(mrb, irep);
  }
  if (args->initname) {
    n = mrb_dump_irep_cfunc(mrb, irep, args->flags, wfp, args->initname);
    if (n == MRB_DUMP_INVALID_ARGUMENT) {
      fprintf(stderr, "%s: invalid C language symbol name\n", args->initname);
    }
  }
  else {
    n = mrb_dump_irep_binary(mrb, irep, args->flags, wfp);
  }
  if (n != MRB_DUMP_OK) {
    fprintf(stderr, "%s: error in mrb dump (%s) %d\n", args->prog, outfile, n);
  }
  return n;
}
