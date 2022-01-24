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
struct alternate_refs_data {void* data; int /*<<< orphan*/  fn; } ;
typedef  int /*<<< orphan*/  alternate_ref_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct alternate_refs_data*) ; 
 int /*<<< orphan*/  refs_from_alternate_cb ; 

void FUNC1(alternate_ref_fn fn, void *data)
{
	struct alternate_refs_data cb;
	cb.fn = fn;
	cb.data = data;
	FUNC0(refs_from_alternate_cb, &cb);
}