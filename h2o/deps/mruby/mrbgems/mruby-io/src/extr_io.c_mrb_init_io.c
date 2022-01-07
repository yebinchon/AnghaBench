
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_11__ {int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_ANY () ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_DATA ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_gv_set (TYPE_1__*,int ,int ) ;
 int mrb_include_module (TYPE_1__*,struct RClass*,int ) ;
 int mrb_intern_cstr (TYPE_1__*,char*) ;
 int mrb_io_check_readable ;
 int mrb_io_close ;
 int mrb_io_close_on_exec_p ;
 int mrb_io_close_write ;
 int mrb_io_closed ;
 int mrb_io_fileno ;
 int mrb_io_initialize ;
 int mrb_io_initialize_copy ;
 int mrb_io_isatty ;
 int mrb_io_pid ;
 int mrb_io_s_for_fd ;
 int mrb_io_s_pipe ;
 int mrb_io_s_popen ;
 int mrb_io_s_select ;
 int mrb_io_s_sysclose ;
 int mrb_io_s_sysopen ;
 int mrb_io_set_close_on_exec ;
 int mrb_io_set_sync ;
 int mrb_io_sync ;
 int mrb_io_sysread ;
 int mrb_io_sysseek ;
 int mrb_io_syswrite ;
 int mrb_module_get (TYPE_1__*,char*) ;
 int mrb_str_new_cstr (TYPE_1__*,char*) ;

void
mrb_init_io(mrb_state *mrb)
{
  struct RClass *io;

  io = mrb_define_class(mrb, "IO", mrb->object_class);
  MRB_SET_INSTANCE_TT(io, MRB_TT_DATA);

  mrb_include_module(mrb, io, mrb_module_get(mrb, "Enumerable"));
  mrb_define_class_method(mrb, io, "_popen", mrb_io_s_popen, MRB_ARGS_ANY());
  mrb_define_class_method(mrb, io, "_sysclose", mrb_io_s_sysclose, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, io, "for_fd", mrb_io_s_for_fd, MRB_ARGS_ANY());
  mrb_define_class_method(mrb, io, "select", mrb_io_s_select, MRB_ARGS_ANY());
  mrb_define_class_method(mrb, io, "sysopen", mrb_io_s_sysopen, MRB_ARGS_ANY());

  mrb_define_class_method(mrb, io, "_pipe", mrb_io_s_pipe, MRB_ARGS_NONE());


  mrb_define_method(mrb, io, "initialize", mrb_io_initialize, MRB_ARGS_ANY());
  mrb_define_method(mrb, io, "initialize_copy", mrb_io_initialize_copy, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, io, "_check_readable", mrb_io_check_readable, MRB_ARGS_NONE());
  mrb_define_method(mrb, io, "isatty", mrb_io_isatty, MRB_ARGS_NONE());
  mrb_define_method(mrb, io, "sync", mrb_io_sync, MRB_ARGS_NONE());
  mrb_define_method(mrb, io, "sync=", mrb_io_set_sync, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, io, "sysread", mrb_io_sysread, MRB_ARGS_ANY());
  mrb_define_method(mrb, io, "sysseek", mrb_io_sysseek, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, io, "syswrite", mrb_io_syswrite, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, io, "close", mrb_io_close, MRB_ARGS_NONE());
  mrb_define_method(mrb, io, "close_write", mrb_io_close_write, MRB_ARGS_NONE());
  mrb_define_method(mrb, io, "close_on_exec=", mrb_io_set_close_on_exec, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, io, "close_on_exec?", mrb_io_close_on_exec_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, io, "closed?", mrb_io_closed, MRB_ARGS_NONE());
  mrb_define_method(mrb, io, "pid", mrb_io_pid, MRB_ARGS_NONE());
  mrb_define_method(mrb, io, "fileno", mrb_io_fileno, MRB_ARGS_NONE());


  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$/"), mrb_str_new_cstr(mrb, "\n"));
}
