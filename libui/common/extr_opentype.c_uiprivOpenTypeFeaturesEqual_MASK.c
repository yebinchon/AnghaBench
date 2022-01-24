#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ uiOpenTypeFeatures ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(const uiOpenTypeFeatures *a, const uiOpenTypeFeatures *b)
{
	if (a == b)
		return 1;
	if (a->len != b->len)
		return 0;
	return FUNC1(a->data, b->data, FUNC0(a->len)) == 0;
}