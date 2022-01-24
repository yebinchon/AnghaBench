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
typedef  int /*<<< orphan*/  u32 ;
struct admhcd {int dummy; } ;
typedef  int /*<<< orphan*/  __hc32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct admhcd const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline __hc32 FUNC3(const struct admhcd *ahcd, const u32 *x)
{
	return FUNC0(ahcd) ?
		FUNC1(x) :
		FUNC2(x);
}