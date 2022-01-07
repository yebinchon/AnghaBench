
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_11__ {scalar_t__ jmp; scalar_t__ exc; } ;
typedef TYPE_1__ mrb_state ;
typedef int mrb_irep ;
typedef int mode_t ;
typedef int jmp_buf ;
typedef int FILE ;


 int E_LOAD_ERROR ;
 int MAX_PATH ;
 int MRB_DUMP_OK ;
 int RSTRING_LEN (int ) ;
 int RSTRING_PTR (int ) ;
 int close (int) ;
 int compile_rb2mrb (TYPE_1__*,int ,int ,char*,int *) ;
 int eval_load_irep (TYPE_1__*,int *) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int longjmp (int ,int) ;
 int mkstemp (char*) ;
 int mrb_get_args (TYPE_1__*,char*,int *,int *) ;
 int mrb_nil_value () ;
 int mrb_raisef (TYPE_1__*,int ,char*,int ) ;
 int * mrb_read_irep_file (TYPE_1__*,int *) ;
 int mrb_str_new_cstr (TYPE_1__*,char*) ;
 char* mrb_str_to_cstr (TYPE_1__*,int ) ;
 int mrb_string_p (int ) ;
 int mrb_sys_fail (TYPE_1__*,char*) ;
 int mrb_true_value () ;
 int remove (char*) ;
 int rewind (int *) ;
 int umask (int) ;

__attribute__((used)) static mrb_value
mrb_require_load_rb_str(mrb_state *mrb, mrb_value self)
{
  char *path_ptr = ((void*)0);



  char tmpname[] = "tmp.XXXXXXXX";

  mode_t mask;
  FILE *tmpfp = ((void*)0);
  int fd = -1, ret;
  mrb_irep *irep;
  mrb_value code, path = mrb_nil_value();

  mrb_get_args(mrb, "S|S", &code, &path);
  if (!mrb_string_p(path)) {
    path = mrb_str_new_cstr(mrb, "-");
  }
  path_ptr = mrb_str_to_cstr(mrb, path);

  mask = umask(077);
  fd = mkstemp(tmpname);
  if (fd == -1) {
    mrb_sys_fail(mrb, "can't create mkstemp() at mrb_require_load_rb_str");
  }
  umask(mask);

  tmpfp = fdopen(fd, "r+");
  if (tmpfp == ((void*)0)) {
    close(fd);
    mrb_sys_fail(mrb, "can't open temporay file at mrb_require_load_rb_str");
  }

  ret = compile_rb2mrb(mrb, RSTRING_PTR(code), RSTRING_LEN(code), path_ptr, tmpfp);
  if (ret != MRB_DUMP_OK) {
    fclose(tmpfp);
    remove(tmpname);
    mrb_raisef(mrb, E_LOAD_ERROR, "can't load file -- %S", path);
    return mrb_nil_value();
  }

  rewind(tmpfp);
  irep = mrb_read_irep_file(mrb, tmpfp);
  fclose(tmpfp);
  remove(tmpname);

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
