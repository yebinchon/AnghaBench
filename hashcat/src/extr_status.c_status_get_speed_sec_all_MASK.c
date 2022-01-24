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
 int /*<<< orphan*/  HCBUFSIZ_TINY ; 
 int /*<<< orphan*/  FUNC0 (double const,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/  const*) ; 

char *FUNC3 (const hashcat_ctx_t *hashcat_ctx)
{
  const double hashes_msec_all = FUNC2 (hashcat_ctx);

  char *display = (char *) FUNC1 (HCBUFSIZ_TINY);

  FUNC0 (hashes_msec_all * 1000, display, HCBUFSIZ_TINY);

  return display;
}