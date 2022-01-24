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
typedef  int /*<<< orphan*/  hashcat_ctx_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 

double FUNC2 (const hashcat_ctx_t *hashcat_ctx)
{
  const int guess_mod_offset = FUNC1 (hashcat_ctx);
  const int guess_mod_count  = FUNC0  (hashcat_ctx);

  if (guess_mod_count == 0) return 0;

  return ((double) guess_mod_offset / (double) guess_mod_count) * 100;
}