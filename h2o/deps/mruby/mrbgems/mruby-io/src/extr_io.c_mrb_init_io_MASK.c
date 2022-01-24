#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_DATA ; 
 struct RClass* FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  mrb_io_check_readable ; 
 int /*<<< orphan*/  mrb_io_close ; 
 int /*<<< orphan*/  mrb_io_close_on_exec_p ; 
 int /*<<< orphan*/  mrb_io_close_write ; 
 int /*<<< orphan*/  mrb_io_closed ; 
 int /*<<< orphan*/  mrb_io_fileno ; 
 int /*<<< orphan*/  mrb_io_initialize ; 
 int /*<<< orphan*/  mrb_io_initialize_copy ; 
 int /*<<< orphan*/  mrb_io_isatty ; 
 int /*<<< orphan*/  mrb_io_pid ; 
 int /*<<< orphan*/  mrb_io_s_for_fd ; 
 int /*<<< orphan*/  mrb_io_s_pipe ; 
 int /*<<< orphan*/  mrb_io_s_popen ; 
 int /*<<< orphan*/  mrb_io_s_select ; 
 int /*<<< orphan*/  mrb_io_s_sysclose ; 
 int /*<<< orphan*/  mrb_io_s_sysopen ; 
 int /*<<< orphan*/  mrb_io_set_close_on_exec ; 
 int /*<<< orphan*/  mrb_io_set_sync ; 
 int /*<<< orphan*/  mrb_io_sync ; 
 int /*<<< orphan*/  mrb_io_sysread ; 
 int /*<<< orphan*/  mrb_io_sysseek ; 
 int /*<<< orphan*/  mrb_io_syswrite ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*) ; 

void
FUNC12(mrb_state *mrb)
{
  struct RClass *io;

  io      = FUNC4(mrb, "IO", mrb->object_class);
  FUNC3(io, MRB_TT_DATA);

  FUNC8(mrb, io, FUNC10(mrb, "Enumerable")); /* 15.2.20.3 */
  FUNC5(mrb, io, "_popen",  mrb_io_s_popen,   FUNC0());
  FUNC5(mrb, io, "_sysclose",  mrb_io_s_sysclose, FUNC2(1));
  FUNC5(mrb, io, "for_fd",  mrb_io_s_for_fd,   FUNC0());
  FUNC5(mrb, io, "select",  mrb_io_s_select,  FUNC0());
  FUNC5(mrb, io, "sysopen", mrb_io_s_sysopen, FUNC0());
#if !defined(_WIN32) && !(defined(TARGET_OS_IPHONE) && TARGET_OS_IPHONE)
  FUNC5(mrb, io, "_pipe", mrb_io_s_pipe, FUNC1());
#endif

  FUNC6(mrb, io, "initialize", mrb_io_initialize, FUNC0());    /* 15.2.20.5.21 (x)*/
  FUNC6(mrb, io, "initialize_copy", mrb_io_initialize_copy, FUNC2(1));
  FUNC6(mrb, io, "_check_readable", mrb_io_check_readable, FUNC1());
  FUNC6(mrb, io, "isatty",     mrb_io_isatty,     FUNC1());
  FUNC6(mrb, io, "sync",       mrb_io_sync,       FUNC1());
  FUNC6(mrb, io, "sync=",      mrb_io_set_sync,   FUNC2(1));
  FUNC6(mrb, io, "sysread",    mrb_io_sysread,    FUNC0());
  FUNC6(mrb, io, "sysseek",    mrb_io_sysseek,    FUNC2(1));
  FUNC6(mrb, io, "syswrite",   mrb_io_syswrite,   FUNC2(1));
  FUNC6(mrb, io, "close",      mrb_io_close,      FUNC1());   /* 15.2.20.5.1 */
  FUNC6(mrb, io, "close_write",    mrb_io_close_write,       FUNC1());
  FUNC6(mrb, io, "close_on_exec=", mrb_io_set_close_on_exec, FUNC2(1));
  FUNC6(mrb, io, "close_on_exec?", mrb_io_close_on_exec_p,   FUNC1());
  FUNC6(mrb, io, "closed?",    mrb_io_closed,     FUNC1());   /* 15.2.20.5.2 */
  FUNC6(mrb, io, "pid",        mrb_io_pid,        FUNC1());   /* 15.2.20.5.2 */
  FUNC6(mrb, io, "fileno",     mrb_io_fileno,     FUNC1());


  FUNC7(mrb, FUNC9(mrb, "$/"), FUNC11(mrb, "\n"));
}