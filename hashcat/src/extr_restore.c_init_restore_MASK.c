#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cwd; int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ restore_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; TYPE_1__* rd; } ;
typedef  TYPE_2__ restore_ctx_t ;
struct TYPE_8__ {TYPE_2__* restore_ctx; } ;
typedef  TYPE_3__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  RESTORE_VERSION_CUR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (hashcat_ctx_t *hashcat_ctx)
{
  restore_ctx_t *restore_ctx = hashcat_ctx->restore_ctx;

  restore_data_t *rd = (restore_data_t *) FUNC2 (sizeof (restore_data_t));

  restore_ctx->rd = rd;

  rd->version = RESTORE_VERSION_CUR;

  rd->argc = restore_ctx->argc;
  rd->argv = restore_ctx->argv;

  if (FUNC1 (rd->cwd, 255) == NULL)
  {
    FUNC0 (hashcat_ctx, "getcwd(): %s", FUNC3 (errno));

    return -1;
  }

  return 0;
}