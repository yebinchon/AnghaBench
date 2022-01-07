
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_6__ {int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_NONE () ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_DATA ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int) ;
 int mrb_dir_chdir ;
 int mrb_dir_chroot ;
 int mrb_dir_close ;
 int mrb_dir_delete ;
 int mrb_dir_existp ;
 int mrb_dir_getwd ;
 int mrb_dir_init ;
 int mrb_dir_mkdir ;
 int mrb_dir_read ;
 int mrb_dir_rewind ;
 int mrb_dir_seek ;
 int mrb_dir_tell ;

void
mrb_mruby_dir_gem_init(mrb_state *mrb)
{
  struct RClass *d;

  d = mrb_define_class(mrb, "Dir", mrb->object_class);
  MRB_SET_INSTANCE_TT(d, MRB_TT_DATA);
  mrb_define_class_method(mrb, d, "delete", mrb_dir_delete, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, d, "exist?", mrb_dir_existp, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, d, "getwd", mrb_dir_getwd, MRB_ARGS_NONE());
  mrb_define_class_method(mrb, d, "mkdir", mrb_dir_mkdir, MRB_ARGS_REQ(1)|MRB_ARGS_OPT(1));
  mrb_define_class_method(mrb, d, "_chdir", mrb_dir_chdir, MRB_ARGS_REQ(1));
  mrb_define_class_method(mrb, d, "chroot", mrb_dir_chroot, MRB_ARGS_REQ(1));

  mrb_define_method(mrb, d, "close", mrb_dir_close, MRB_ARGS_NONE());
  mrb_define_method(mrb, d, "initialize", mrb_dir_init, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, d, "read", mrb_dir_read, MRB_ARGS_NONE());
  mrb_define_method(mrb, d, "rewind", mrb_dir_rewind, MRB_ARGS_NONE());
  mrb_define_method(mrb, d, "seek", mrb_dir_seek, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, d, "tell", mrb_dir_tell, MRB_ARGS_NONE());
}
