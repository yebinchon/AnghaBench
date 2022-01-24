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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int enabled; int unused; int /*<<< orphan*/  filename; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ loopback_ctx_t ;
struct TYPE_7__ {TYPE_1__* loopback_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  EOL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/  const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7 (hashcat_ctx_t *hashcat_ctx, const u8 *plain_ptr, const unsigned int plain_len)
{
  loopback_ctx_t *loopback_ctx = hashcat_ctx->loopback_ctx;

  if (loopback_ctx->enabled == false) return;

  FUNC5 (hashcat_ctx, plain_ptr, plain_len);

  FUNC3 (&loopback_ctx->fp);

  FUNC2 (EOL, FUNC6 (EOL), 1, &loopback_ctx->fp);

  FUNC1 (&loopback_ctx->fp);

  if (FUNC4 (&loopback_ctx->fp))
  {
    FUNC0 (hashcat_ctx, "%s: Failed to unlock file", loopback_ctx->filename);
  }

  loopback_ctx->unused = false;
}