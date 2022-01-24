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
struct transport {struct helper_data* data; } ;
struct helper_data {int /*<<< orphan*/  rs; } ;

/* Variables and functions */
 int FUNC0 (struct transport*) ; 
 int /*<<< orphan*/  FUNC1 (struct helper_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct transport *transport)
{
	int res = 0;
	struct helper_data *data = transport->data;
	FUNC2(&data->rs);
	res = FUNC0(transport);
	FUNC1(transport->data);
	return res;
}