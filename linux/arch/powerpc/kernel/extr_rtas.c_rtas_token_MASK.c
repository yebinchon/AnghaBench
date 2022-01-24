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
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int RTAS_UNKNOWN_SERVICE ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__ rtas ; 

int FUNC2(const char *service)
{
	const __be32 *tokp;
	if (rtas.dev == NULL)
		return RTAS_UNKNOWN_SERVICE;
	tokp = FUNC1(rtas.dev, service, NULL);
	return tokp ? FUNC0(*tokp) : RTAS_UNKNOWN_SERVICE;
}