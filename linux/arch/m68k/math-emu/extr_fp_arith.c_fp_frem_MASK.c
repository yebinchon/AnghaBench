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
struct fp_ext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPCR_ROUND_RN ; 
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct fp_ext* FUNC1 (struct fp_ext*,struct fp_ext*,int /*<<< orphan*/ ) ; 

struct fp_ext *
FUNC2(struct fp_ext *dest, struct fp_ext *src)
{
	FUNC0(PINSTR, "frem\n");
	return FUNC1(dest, src, FPCR_ROUND_RN);
}