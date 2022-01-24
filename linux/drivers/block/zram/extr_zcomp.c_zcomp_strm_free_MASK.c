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
struct zcomp_strm {scalar_t__ buffer; int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zcomp_strm*) ; 

__attribute__((used)) static void FUNC4(struct zcomp_strm *zstrm)
{
	if (!FUNC0(zstrm->tfm))
		FUNC1(zstrm->tfm);
	FUNC2((unsigned long)zstrm->buffer, 1);
	FUNC3(zstrm);
}