#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* (* get_temporary_folder ) (int /*<<< orphan*/ ) ;char const* (* game_type ) (int /*<<< orphan*/ ) ;char* (* replace_command_line ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  userdata; TYPE_1__ hooks; } ;
struct TYPE_7__ {int /*<<< orphan*/  supported; } ;
struct TYPE_8__ {TYPE_2__ pbos; int /*<<< orphan*/  command_line; int /*<<< orphan*/  runfiles_path; TYPE_4__* dm_ctx; } ;
typedef  TYPE_3__ GameContext ;
typedef  TYPE_4__ DeepmindContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qglGenBuffers ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char const* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

__attribute__((used)) static int FUNC11(GameContext* gc) {
  DeepmindContext* ctx = gc->dm_ctx;

  FUNC6(gc->runfiles_path);

  FUNC5();
  FUNC4();

  const char* dynamic_path = ctx->hooks.get_temporary_folder(ctx->userdata);
  FUNC3(gc->command_line, sizeof(gc->command_line),
           FUNC10(" +set fs_temporarypath \"%s\"", dynamic_path));
  FUNC3(gc->command_line, sizeof(gc->command_line),
           FUNC10(" +set fs_homepath \"%s\"", dynamic_path));

  FUNC3(gc->command_line, sizeof(gc->command_line),
           FUNC10(" +set g_gametype \"%d\"", ctx->hooks.game_type(ctx->userdata)));

  const char* modifiedCommandLine =
      ctx->hooks.replace_command_line(ctx->userdata, gc->command_line);

  FUNC1((char*)modifiedCommandLine);

  FUNC2();
  FUNC0();

  // We assume PBO's are supported iff we can load the glGenBuffers function.
  gc->pbos.supported = qglGenBuffers;

  return 0;
}