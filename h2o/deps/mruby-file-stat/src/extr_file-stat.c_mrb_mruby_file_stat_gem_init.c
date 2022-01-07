
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_7__ {struct RClass* object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_DATA ;
 int file_s_lstat ;
 int io_stat ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,struct RClass*) ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 struct RClass* mrb_define_class_under (TYPE_1__*,struct RClass*,char*,struct RClass*) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int stat_atime ;
 int stat_birthtime ;
 int stat_blksize ;
 int stat_blockdev_p ;
 int stat_blocks ;
 int stat_chardev_p ;
 int stat_ctime ;
 int stat_dev ;
 int stat_dev_major ;
 int stat_dev_minor ;
 int stat_directory_p ;
 int stat_executable_p ;
 int stat_executable_real_p ;
 int stat_file_p ;
 int stat_ftype ;
 int stat_gid ;
 int stat_grpowned_p ;
 int stat_initialize ;
 int stat_initialize_copy ;
 int stat_ino ;
 int stat_mode ;
 int stat_mtime ;
 int stat_nlink ;
 int stat_owned_p ;
 int stat_owned_real_p ;
 int stat_pipe_p ;
 int stat_rdev ;
 int stat_rdev_major ;
 int stat_rdev_minor ;
 int stat_readable_p ;
 int stat_readable_real_p ;
 int stat_setgid_p ;
 int stat_setuid_p ;
 int stat_size ;
 int stat_socket_p ;
 int stat_sticky_p ;
 int stat_symlink_p ;
 int stat_uid ;
 int stat_world_readable_p ;
 int stat_world_writable_p ;
 int stat_writable_p ;
 int stat_writable_real_p ;

void
mrb_mruby_file_stat_gem_init(mrb_state* mrb)
{
  struct RClass *io = mrb_define_class(mrb, "IO", mrb->object_class);
  struct RClass *file = mrb_define_class(mrb, "File", io);
  struct RClass *stat = mrb_define_class_under(mrb, file, "Stat", mrb->object_class);

  MRB_SET_INSTANCE_TT(stat, MRB_TT_DATA);

  mrb_define_method(mrb, io, "stat", io_stat, MRB_ARGS_NONE());

  mrb_define_class_method(mrb, file, "lstat", file_s_lstat, MRB_ARGS_REQ(1));

  mrb_define_method(mrb, stat, "initialize", stat_initialize, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, stat, "initialize_copy", stat_initialize_copy, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, stat, "dev", stat_dev, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "dev_major", stat_dev_major, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "dev_minor", stat_dev_minor, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "ino", stat_ino, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "mode", stat_mode, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "nlink", stat_nlink, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "uid", stat_uid, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "gid", stat_gid, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "rdev", stat_rdev, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "rdev_major", stat_rdev_major, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "rdev_minor", stat_rdev_minor, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "atime", stat_atime, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "mtime", stat_mtime, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "ctime", stat_ctime, MRB_ARGS_NONE());



  mrb_define_method(mrb, stat, "size", stat_size, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "blksize", stat_blksize, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "blocks", stat_blocks, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "grpowned?", stat_grpowned_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "readable?", stat_readable_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "readable_real?", stat_readable_real_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "world_readable?", stat_world_readable_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "writable?", stat_writable_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "writable_real?", stat_writable_real_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "world_writable?", stat_world_writable_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "executable?", stat_executable_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "executable_real?", stat_executable_real_p, MRB_ARGS_NONE());

  mrb_define_method(mrb, stat, "symlink?", stat_symlink_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "file?", stat_file_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "directory?", stat_directory_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "chardev?", stat_chardev_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "blockdev?", stat_blockdev_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "pipe?", stat_pipe_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "socket?", stat_socket_p, MRB_ARGS_NONE());

  mrb_define_method(mrb, stat, "setuid?", stat_setuid_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "setgid?", stat_setgid_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "sticky?", stat_sticky_p, MRB_ARGS_NONE());

  mrb_define_method(mrb, stat, "ftype", stat_ftype, MRB_ARGS_NONE());

  mrb_define_method(mrb, stat, "owned?", stat_owned_p, MRB_ARGS_NONE());
  mrb_define_method(mrb, stat, "owned_real?", stat_owned_real_p, MRB_ARGS_NONE());
}
