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
struct OpalIoP7IOCErrorData {scalar_t__ lemWof; scalar_t__ lemAction1; scalar_t__ lemAction0; scalar_t__ lemErrMask; scalar_t__ lemFir; scalar_t__ gemRwof; scalar_t__ gemMask; scalar_t__ gemRirqfir; scalar_t__ gemRfir; scalar_t__ gemXfir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct OpalIoP7IOCErrorData *data)
{
	/* GEM */
	if (data->gemXfir || data->gemRfir ||
	    data->gemRirqfir || data->gemMask || data->gemRwof)
		FUNC1("  GEM: %016llx %016llx %016llx %016llx %016llx\n",
			FUNC0(data->gemXfir),
			FUNC0(data->gemRfir),
			FUNC0(data->gemRirqfir),
			FUNC0(data->gemMask),
			FUNC0(data->gemRwof));

	/* LEM */
	if (data->lemFir || data->lemErrMask ||
	    data->lemAction0 || data->lemAction1 || data->lemWof)
		FUNC1("  LEM: %016llx %016llx %016llx %016llx %016llx\n",
			FUNC0(data->lemFir),
			FUNC0(data->lemErrMask),
			FUNC0(data->lemAction0),
			FUNC0(data->lemAction1),
			FUNC0(data->lemWof));
}