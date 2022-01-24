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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_5__ {TYPE_2__* debugfile_ctx; } ;
typedef  TYPE_1__ hashcat_ctx_t ;
struct TYPE_6__ {int enabled; int mode; int /*<<< orphan*/  fp; } ;
typedef  TYPE_2__ debugfile_ctx_t ;

/* Variables and functions */
 void* EOL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,int const) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int const,int,int /*<<< orphan*/ *) ; 
 int const FUNC3 (void*) ; 

void FUNC4 (hashcat_ctx_t *hashcat_ctx, const u8 *rule_buf, const u32 rule_len, const u8 *mod_plain_ptr, const u32 mod_plain_len, const u8 *orig_plain_ptr, const u32 orig_plain_len)
{
  debugfile_ctx_t *debugfile_ctx = hashcat_ctx->debugfile_ctx;

  if (debugfile_ctx->enabled == false) return;

  const u32 debug_mode = debugfile_ctx->mode;

  if ((debug_mode == 2) || (debug_mode == 3) || (debug_mode == 4))
  {
    FUNC0 (hashcat_ctx, orig_plain_ptr, orig_plain_len);

    if ((debug_mode == 3) || (debug_mode == 4)) FUNC1 (':', &debugfile_ctx->fp);
  }

  FUNC2 ((void *)rule_buf, rule_len, 1, &debugfile_ctx->fp);

  if (debug_mode == 4)
  {
    FUNC1 (':', &debugfile_ctx->fp);

    FUNC0 (hashcat_ctx, mod_plain_ptr, mod_plain_len);
  }

  FUNC2 (EOL, FUNC3 (EOL), 1, &debugfile_ctx->fp);
}