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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ time_t ;
struct TYPE_6__ {int enabled; int unused; int /*<<< orphan*/  filename; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ loopback_ctx_t ;
struct TYPE_7__ {int enabled; int /*<<< orphan*/  root_directory; } ;
typedef  TYPE_2__ induct_ctx_t ;
struct TYPE_8__ {TYPE_1__* loopback_ctx; TYPE_2__* induct_ctx; } ;
typedef  TYPE_3__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOOPBACK_FILE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

int FUNC6 (hashcat_ctx_t *hashcat_ctx)
{
  induct_ctx_t   *induct_ctx   = hashcat_ctx->induct_ctx;
  loopback_ctx_t *loopback_ctx = hashcat_ctx->loopback_ctx;

  if (loopback_ctx->enabled == false) return 0;

  if (induct_ctx->enabled == false) return 0;

  time_t now;

  FUNC5 (&now);

  const u32 random_num = FUNC1 (0, 9999);

  FUNC2 (&loopback_ctx->filename, "%s/%s.%d_%u", induct_ctx->root_directory, LOOPBACK_FILE, (int) now, random_num);

  if (FUNC3 (&loopback_ctx->fp, loopback_ctx->filename, "ab") == false)
  {
    FUNC0 (hashcat_ctx, "%s: %s", loopback_ctx->filename, FUNC4 (errno));

    return -1;
  }

  loopback_ctx->unused = true;

  return 0;
}