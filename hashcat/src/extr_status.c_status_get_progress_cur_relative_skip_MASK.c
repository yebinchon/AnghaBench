#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  hashcat_ctx_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 

u64 FUNC2 (const hashcat_ctx_t *hashcat_ctx)
{
  const u64 progress_skip = FUNC1 (hashcat_ctx);
  const u64 progress_cur  = FUNC0  (hashcat_ctx);

  u64 progress_cur_relative_skip = 0;

  if (progress_cur > 0)
  {
    progress_cur_relative_skip = progress_cur - progress_skip;
  }

  return progress_cur_relative_skip;
}