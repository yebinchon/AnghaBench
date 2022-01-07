
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_8__ {scalar_t__ jmp; scalar_t__ exc; } ;
typedef TYPE_1__ mrb_state ;
typedef int mrb_irep ;
typedef int jmp_buf ;
typedef int FILE ;


 int E_LOAD_ERROR ;
 int eval_load_irep (TYPE_1__*,int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int longjmp (int ,int) ;
 int mrb_get_args (TYPE_1__*,char*,int *) ;
 int mrb_nil_value () ;
 int mrb_raisef (TYPE_1__*,int ,char*,int ) ;
 int * mrb_read_irep_file (TYPE_1__*,int *) ;
 char* mrb_str_to_cstr (TYPE_1__*,int ) ;
 int mrb_true_value () ;

__attribute__((used)) static mrb_value
mrb_require_load_mrb_file(mrb_state *mrb, mrb_value self)
{
  char *path_ptr = ((void*)0);
  FILE *fp = ((void*)0);
  mrb_irep *irep;
  mrb_value path;

  mrb_get_args(mrb, "S", &path);
  path_ptr = mrb_str_to_cstr(mrb, path);

  fp = fopen(path_ptr, "rb");
  if (fp == ((void*)0)) {
    mrb_raisef(mrb, E_LOAD_ERROR, "can't open file -- %S", path);
  }

  irep = mrb_read_irep_file(mrb, fp);
  fclose(fp);

  if (irep) {
    eval_load_irep(mrb, irep);
  } else if (mrb->exc) {

    longjmp(*(jmp_buf*)mrb->jmp, 1);
  } else {
    mrb_raisef(mrb, E_LOAD_ERROR, "can't load file -- %S", path);
    return mrb_nil_value();
  }

  return mrb_true_value();
}
