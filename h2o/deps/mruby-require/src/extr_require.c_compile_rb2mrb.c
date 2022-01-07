
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int no_exec; } ;
typedef TYPE_2__ mrbc_context ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_irep ;
struct TYPE_8__ {int * irep; } ;
struct TYPE_10__ {TYPE_1__ body; } ;
typedef int FILE ;


 int MRB_DUMP_GENERAL_FAILURE ;
 int mrb_close (int *) ;
 int mrb_dump_irep_binary (int *,int *,int,int *) ;
 int mrb_load_nstring_cxt (int *,char const*,int,TYPE_2__*) ;
 int * mrb_open () ;
 TYPE_6__* mrb_proc_ptr (int ) ;
 scalar_t__ mrb_undef_p (int ) ;
 int mrbc_context_free (int *,TYPE_2__*) ;
 TYPE_2__* mrbc_context_new (int *) ;
 int mrbc_filename (int *,TYPE_2__*,char const*) ;

__attribute__((used)) static int
compile_rb2mrb(mrb_state *mrb0, const char *code, int code_len, const char *path, FILE* tmpfp)
{
  mrb_state *mrb = mrb_open();
  mrb_value result;
  mrbc_context *c;
  int ret = -1;
  int debuginfo = 1;
  mrb_irep *irep;

  c = mrbc_context_new(mrb);
  c->no_exec = 1;
  if (path != ((void*)0)) {
    mrbc_filename(mrb, c, path);
  }

  result = mrb_load_nstring_cxt(mrb, code, code_len, c);
  if (mrb_undef_p(result)) {
    mrbc_context_free(mrb, c);
    mrb_close(mrb);
    return MRB_DUMP_GENERAL_FAILURE;
  }

  irep = mrb_proc_ptr(result)->body.irep;
  ret = mrb_dump_irep_binary(mrb, irep, debuginfo, tmpfp);

  mrbc_context_free(mrb, c);
  mrb_close(mrb);

  return ret;
}
