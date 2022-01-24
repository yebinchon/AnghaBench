#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int no_exec; } ;
typedef  TYPE_2__ mrbc_context ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;
struct TYPE_8__ {int /*<<< orphan*/ * irep; } ;
struct TYPE_10__ {TYPE_1__ body; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MRB_DUMP_GENERAL_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,char const*) ; 

__attribute__((used)) static int
FUNC9(mrb_state *mrb0, const char *code, int code_len, const char *path, FILE* tmpfp)
{
  mrb_state *mrb = FUNC3();
  mrb_value result;
  mrbc_context *c;
  int ret = -1;
  int debuginfo = 1;
  mrb_irep *irep;

  c = FUNC7(mrb);
  c->no_exec = 1;
  if (path != NULL) {
    FUNC8(mrb, c, path);
  }

  result = FUNC2(mrb, code, code_len, c);
  if (FUNC5(result)) {
    FUNC6(mrb, c);
    FUNC0(mrb);
    return MRB_DUMP_GENERAL_FAILURE;
  }

  irep = FUNC4(result)->body.irep;
  ret = FUNC1(mrb, irep, debuginfo, tmpfp);

  FUNC6(mrb, c);
  FUNC0(mrb);

  return ret;
}