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
struct object {int dummy; } ;
struct name_decoration {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECORATE_SHORT_REFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct name_decoration const* FUNC1 (int /*<<< orphan*/ *,struct object const*) ; 
 int /*<<< orphan*/  name_decoration ; 

const struct name_decoration *FUNC2(const struct object *obj)
{
	FUNC0(NULL, DECORATE_SHORT_REFS);
	return FUNC1(&name_decoration, obj);
}