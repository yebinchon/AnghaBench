#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* debugfile_ctx; } ;
typedef  TYPE_1__ hashcat_ctx_t ;
struct TYPE_6__ {int enabled; int /*<<< orphan*/  fp; scalar_t__ filename; } ;
typedef  TYPE_2__ debugfile_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC2 (hashcat_ctx_t *hashcat_ctx)
{
  debugfile_ctx_t *debugfile_ctx = hashcat_ctx->debugfile_ctx;

  if (debugfile_ctx->enabled == false) return;

  if (debugfile_ctx->filename)
  {
    FUNC0 (&debugfile_ctx->fp);
  }

  FUNC1 (debugfile_ctx, 0, sizeof (debugfile_ctx_t));
}