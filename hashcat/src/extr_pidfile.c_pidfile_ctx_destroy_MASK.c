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
struct TYPE_5__ {int pidfile_written; int /*<<< orphan*/  pd; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ pidfile_ctx_t ;
struct TYPE_6__ {TYPE_1__* pidfile_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3 (hashcat_ctx_t *hashcat_ctx)
{
  pidfile_ctx_t *pidfile_ctx = hashcat_ctx->pidfile_ctx;

  if (pidfile_ctx->pidfile_written == true)
  {
    FUNC2 (pidfile_ctx->filename);
  }

  FUNC0 (pidfile_ctx->filename);

  FUNC0 (pidfile_ctx->pd);

  FUNC1 (pidfile_ctx, 0, sizeof (pidfile_ctx_t));
}