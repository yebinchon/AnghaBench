#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiOpenTypeFeatures ;
struct TYPE_6__ {scalar_t__ len; } ;
typedef  TYPE_1__ GString ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  toCSS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_1__*) ; 

GString *FUNC3(const uiOpenTypeFeatures *otf)
{
	GString *s;

	s = FUNC0("");
	FUNC2(otf, toCSS, s);
	if (s->len != 0)
		// and remove the last comma
		FUNC1(s, s->len - 2);
	return s;
}