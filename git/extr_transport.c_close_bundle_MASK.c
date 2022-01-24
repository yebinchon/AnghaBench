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
struct transport {struct bundle_transport_data* data; } ;
struct bundle_transport_data {scalar_t__ fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bundle_transport_data*) ; 

__attribute__((used)) static int FUNC2(struct transport *transport)
{
	struct bundle_transport_data *data = transport->data;
	if (data->fd > 0)
		FUNC0(data->fd);
	FUNC1(data);
	return 0;
}