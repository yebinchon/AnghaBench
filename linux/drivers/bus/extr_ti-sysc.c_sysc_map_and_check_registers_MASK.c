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
struct sysc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sysc*) ; 
 int FUNC1 (struct sysc*) ; 
 int FUNC2 (struct sysc*) ; 
 int FUNC3 (struct sysc*) ; 
 int FUNC4 (struct sysc*) ; 

__attribute__((used)) static int FUNC5(struct sysc *ddata)
{
	int error;

	error = FUNC3(ddata);
	if (error)
		return error;

	FUNC0(ddata);

	error = FUNC4(ddata);
	if (error)
		return error;

	error = FUNC2(ddata);
	if (error)
		return error;

	error = FUNC1(ddata);
	if (error)
		return error;

	return 0;
}