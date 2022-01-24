#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_7__ {struct RClass* object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_DATA ; 
 int /*<<< orphan*/  file_s_lstat ; 
 int /*<<< orphan*/  io_stat ; 
 struct RClass* FUNC3 (TYPE_1__*,char*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC5 (TYPE_1__*,struct RClass*,char*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stat_atime ; 
 int /*<<< orphan*/  stat_birthtime ; 
 int /*<<< orphan*/  stat_blksize ; 
 int /*<<< orphan*/  stat_blockdev_p ; 
 int /*<<< orphan*/  stat_blocks ; 
 int /*<<< orphan*/  stat_chardev_p ; 
 int /*<<< orphan*/  stat_ctime ; 
 int /*<<< orphan*/  stat_dev ; 
 int /*<<< orphan*/  stat_dev_major ; 
 int /*<<< orphan*/  stat_dev_minor ; 
 int /*<<< orphan*/  stat_directory_p ; 
 int /*<<< orphan*/  stat_executable_p ; 
 int /*<<< orphan*/  stat_executable_real_p ; 
 int /*<<< orphan*/  stat_file_p ; 
 int /*<<< orphan*/  stat_ftype ; 
 int /*<<< orphan*/  stat_gid ; 
 int /*<<< orphan*/  stat_grpowned_p ; 
 int /*<<< orphan*/  stat_initialize ; 
 int /*<<< orphan*/  stat_initialize_copy ; 
 int /*<<< orphan*/  stat_ino ; 
 int /*<<< orphan*/  stat_mode ; 
 int /*<<< orphan*/  stat_mtime ; 
 int /*<<< orphan*/  stat_nlink ; 
 int /*<<< orphan*/  stat_owned_p ; 
 int /*<<< orphan*/  stat_owned_real_p ; 
 int /*<<< orphan*/  stat_pipe_p ; 
 int /*<<< orphan*/  stat_rdev ; 
 int /*<<< orphan*/  stat_rdev_major ; 
 int /*<<< orphan*/  stat_rdev_minor ; 
 int /*<<< orphan*/  stat_readable_p ; 
 int /*<<< orphan*/  stat_readable_real_p ; 
 int /*<<< orphan*/  stat_setgid_p ; 
 int /*<<< orphan*/  stat_setuid_p ; 
 int /*<<< orphan*/  stat_size ; 
 int /*<<< orphan*/  stat_socket_p ; 
 int /*<<< orphan*/  stat_sticky_p ; 
 int /*<<< orphan*/  stat_symlink_p ; 
 int /*<<< orphan*/  stat_uid ; 
 int /*<<< orphan*/  stat_world_readable_p ; 
 int /*<<< orphan*/  stat_world_writable_p ; 
 int /*<<< orphan*/  stat_writable_p ; 
 int /*<<< orphan*/  stat_writable_real_p ; 

void
FUNC7(mrb_state* mrb)
{
  struct RClass *io = FUNC3(mrb, "IO", mrb->object_class);
  struct RClass *file = FUNC3(mrb, "File", io);
  struct RClass *stat = FUNC5(mrb, file, "Stat", mrb->object_class);

  FUNC2(stat, MRB_TT_DATA);

  FUNC6(mrb, io, "stat", io_stat, FUNC0());

  FUNC4(mrb, file, "lstat", file_s_lstat, FUNC1(1));

  FUNC6(mrb, stat, "initialize", stat_initialize, FUNC1(1));
  FUNC6(mrb, stat, "initialize_copy", stat_initialize_copy, FUNC1(1));
  FUNC6(mrb, stat, "dev", stat_dev, FUNC0());
  FUNC6(mrb, stat, "dev_major", stat_dev_major, FUNC0());
  FUNC6(mrb, stat, "dev_minor", stat_dev_minor, FUNC0());
  FUNC6(mrb, stat, "ino", stat_ino, FUNC0());
  FUNC6(mrb, stat, "mode", stat_mode, FUNC0());
  FUNC6(mrb, stat, "nlink", stat_nlink, FUNC0());
  FUNC6(mrb, stat, "uid", stat_uid, FUNC0());
  FUNC6(mrb, stat, "gid", stat_gid, FUNC0());
  FUNC6(mrb, stat, "rdev", stat_rdev, FUNC0());
  FUNC6(mrb, stat, "rdev_major", stat_rdev_major, FUNC0());
  FUNC6(mrb, stat, "rdev_minor", stat_rdev_minor, FUNC0());
  FUNC6(mrb, stat, "atime", stat_atime, FUNC0());
  FUNC6(mrb, stat, "mtime", stat_mtime, FUNC0());
  FUNC6(mrb, stat, "ctime", stat_ctime, FUNC0());
#ifdef HAVE_METHOD_BIRTHTIME
  mrb_define_method(mrb, stat, "birthtime", stat_birthtime, MRB_ARGS_NONE());
#endif
  FUNC6(mrb, stat, "size", stat_size, FUNC0());
  FUNC6(mrb, stat, "blksize", stat_blksize, FUNC0());
  FUNC6(mrb, stat, "blocks", stat_blocks, FUNC0());
  FUNC6(mrb, stat, "grpowned?", stat_grpowned_p, FUNC0());
  FUNC6(mrb, stat, "readable?", stat_readable_p, FUNC0());
  FUNC6(mrb, stat, "readable_real?", stat_readable_real_p, FUNC0());
  FUNC6(mrb, stat, "world_readable?", stat_world_readable_p, FUNC0());
  FUNC6(mrb, stat, "writable?", stat_writable_p, FUNC0());
  FUNC6(mrb, stat, "writable_real?", stat_writable_real_p, FUNC0());
  FUNC6(mrb, stat, "world_writable?", stat_world_writable_p, FUNC0());
  FUNC6(mrb, stat, "executable?", stat_executable_p, FUNC0());
  FUNC6(mrb, stat, "executable_real?", stat_executable_real_p, FUNC0());

  FUNC6(mrb, stat, "symlink?", stat_symlink_p, FUNC0());
  FUNC6(mrb, stat, "file?", stat_file_p, FUNC0());
  FUNC6(mrb, stat, "directory?", stat_directory_p, FUNC0());
  FUNC6(mrb, stat, "chardev?", stat_chardev_p, FUNC0());
  FUNC6(mrb, stat, "blockdev?", stat_blockdev_p, FUNC0());
  FUNC6(mrb, stat, "pipe?", stat_pipe_p, FUNC0());
  FUNC6(mrb, stat, "socket?", stat_socket_p, FUNC0());

  FUNC6(mrb, stat, "setuid?", stat_setuid_p, FUNC0());
  FUNC6(mrb, stat, "setgid?", stat_setgid_p, FUNC0());
  FUNC6(mrb, stat, "sticky?", stat_sticky_p, FUNC0());

  FUNC6(mrb, stat, "ftype", stat_ftype, FUNC0());

  FUNC6(mrb, stat, "owned?", stat_owned_p, FUNC0());
  FUNC6(mrb, stat, "owned_real?", stat_owned_real_p, FUNC0());
}