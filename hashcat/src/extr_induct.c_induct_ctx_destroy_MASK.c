#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int enabled; int /*<<< orphan*/  root_directory; } ;
typedef  TYPE_1__ induct_ctx_t ;
struct TYPE_7__ {TYPE_1__* induct_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTEMPTY ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5 (hashcat_ctx_t *hashcat_ctx)
{
  induct_ctx_t *induct_ctx = hashcat_ctx->induct_ctx;

  if (induct_ctx->enabled == false) return;

  if (FUNC3 (induct_ctx->root_directory) == -1)
  {
    if (errno == ENOENT)
    {
      // good, we can ignore
    }
    else if (errno == ENOTEMPTY)
    {
      // good, we can ignore
    }
    else
    {
      FUNC0 (hashcat_ctx, "%s: %s", induct_ctx->root_directory, FUNC4 (errno));

      //return -1;
    }
  }

  FUNC1 (induct_ctx->root_directory);

  FUNC2 (induct_ctx, 0, sizeof (induct_ctx_t));
}