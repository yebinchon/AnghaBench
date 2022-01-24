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
struct sigscratch {int dummy; } ;
struct ksignal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int FUNC0 (struct ksignal*,int /*<<< orphan*/ ,struct sigscratch*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,struct ksignal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long
FUNC4 (struct ksignal *ksig, struct sigscratch *scr)
{
	int ret = FUNC0(ksig, FUNC1(), scr);

	if (!ret)
		FUNC2(ret, ksig, FUNC3(TIF_SINGLESTEP));

	return ret;
}