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
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; int /*<<< orphan*/  val_id; int /*<<< orphan*/  key_id; } ;
typedef  TYPE_1__ lmo_entry_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  cmp_index ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *array, int n, FILE *out)
{
	lmo_entry_t *e;

	FUNC1(array, n, sizeof(*e), cmp_index);

	for (e = array; n > 0; n--, e++)
	{
		FUNC0(e->key_id, out);
		FUNC0(e->val_id, out);
		FUNC0(e->offset, out);
		FUNC0(e->length, out);
	}
}