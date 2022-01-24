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
struct mdfour {int /*<<< orphan*/  D; int /*<<< orphan*/  C; int /*<<< orphan*/  B; int /*<<< orphan*/  A; } ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mdfour *md, byte *out)
{
	FUNC0(out, md->A);
	FUNC0(out+4, md->B);
	FUNC0(out+8, md->C);
	FUNC0(out+12, md->D);
}