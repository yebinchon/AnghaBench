#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {TYPE_3__* dbg; int /*<<< orphan*/  srcpath; } ;
typedef  TYPE_1__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_6__ {int /*<<< orphan*/  prvline; int /*<<< orphan*/  prvfile; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC3(mrb_state *mrb, mrdb_state *mrdb)
{
  char* file = FUNC0(mrb, mrdb, mrdb->srcpath, mrdb->dbg->prvfile);
  uint16_t lineno = mrdb->dbg->prvline;
  if (file != NULL) {
    FUNC1(mrb, mrdb->dbg, file, lineno, lineno);
    FUNC2(mrb, file);
  }
}