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
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  OBJECT_INFO_SKIP_FETCH_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const struct object_id *oid, FILE *fh, int negative)
{
	if (negative &&
	    !FUNC1(oid, OBJECT_INFO_SKIP_FETCH_OBJECT))
		return;

	if (negative)
		FUNC3('^', fh);
	FUNC0(FUNC2(oid), fh);
	FUNC3('\n', fh);
}