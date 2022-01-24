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
struct TYPE_4__ {int /*<<< orphan*/  n_nodes; int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ kson_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

kson_t *FUNC3(const char *json)
{
	kson_t *kson;
	int error;
	kson = (kson_t*)FUNC0(1, sizeof(kson_t));
	kson->root = FUNC2(json, &kson->n_nodes, &error, 0);
	if (error) {
		FUNC1(kson);
		return 0;
	}
	return kson;
}