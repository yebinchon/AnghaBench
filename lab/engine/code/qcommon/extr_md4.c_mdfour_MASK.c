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
struct mdfour {int dummy; } ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mdfour*) ; 
 int /*<<< orphan*/  FUNC1 (struct mdfour*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mdfour*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(byte *out, byte *in, int n)
{
	struct mdfour md;
	FUNC0(&md);
	FUNC2(&md, in, n);
	FUNC1(&md, out);
}