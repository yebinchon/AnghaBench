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
struct filter_sparse_data {struct filter_sparse_data* array_frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filter_sparse_data*) ; 

__attribute__((used)) static void FUNC1(void *filter_data)
{
	struct filter_sparse_data *d = filter_data;
	FUNC0(d->array_frame);
	FUNC0(d);
}