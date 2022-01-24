#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_DATA ; 
 struct RClass* FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mrb_dir_chdir ; 
 int /*<<< orphan*/  mrb_dir_chroot ; 
 int /*<<< orphan*/  mrb_dir_close ; 
 int /*<<< orphan*/  mrb_dir_delete ; 
 int /*<<< orphan*/  mrb_dir_existp ; 
 int /*<<< orphan*/  mrb_dir_getwd ; 
 int /*<<< orphan*/  mrb_dir_init ; 
 int /*<<< orphan*/  mrb_dir_mkdir ; 
 int /*<<< orphan*/  mrb_dir_read ; 
 int /*<<< orphan*/  mrb_dir_rewind ; 
 int /*<<< orphan*/  mrb_dir_seek ; 
 int /*<<< orphan*/  mrb_dir_tell ; 

void
FUNC7(mrb_state *mrb)
{
  struct RClass *d;

  d = FUNC4(mrb, "Dir", mrb->object_class);
  FUNC3(d, MRB_TT_DATA);
  FUNC5(mrb, d, "delete", mrb_dir_delete, FUNC2(1));
  FUNC5(mrb, d, "exist?", mrb_dir_existp, FUNC2(1));
  FUNC5(mrb, d, "getwd",  mrb_dir_getwd,  FUNC0());
  FUNC5(mrb, d, "mkdir",  mrb_dir_mkdir,  FUNC2(1)|FUNC1(1));
  FUNC5(mrb, d, "_chdir", mrb_dir_chdir,  FUNC2(1));
  FUNC5(mrb, d, "chroot", mrb_dir_chroot, FUNC2(1));

  FUNC6(mrb, d, "close",      mrb_dir_close,  FUNC0());
  FUNC6(mrb, d, "initialize", mrb_dir_init,   FUNC2(1));
  FUNC6(mrb, d, "read",       mrb_dir_read,   FUNC0());
  FUNC6(mrb, d, "rewind",     mrb_dir_rewind, FUNC0());
  FUNC6(mrb, d, "seek",       mrb_dir_seek,   FUNC2(1));
  FUNC6(mrb, d, "tell",       mrb_dir_tell,   FUNC0());
}