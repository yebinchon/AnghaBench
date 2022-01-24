#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_2__ {int /*<<< orphan*/  identity; } ;

/* Variables and functions */
 size_t FUNC0 (int,scalar_t__) ; 
 TYPE_1__* lm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 
 scalar_t__ FUNC2 (char const*) ; 

void FUNC3(const char* identity)
{
	size_t len;
	if (!lm)
		return;
	len = FUNC0(sizeof(lm->identity)/sizeof(wchar_t), FUNC2(identity)+1);
	FUNC1(lm->identity, identity, len);
}