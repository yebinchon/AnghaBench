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
struct transport {struct git_transport_data* data; } ;
struct git_transport_data {scalar_t__ conn; int /*<<< orphan*/ * fd; scalar_t__ got_remote_heads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct git_transport_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct transport *transport)
{
	struct git_transport_data *data = transport->data;
	if (data->conn) {
		if (data->got_remote_heads)
			FUNC3(data->fd[1]);
		FUNC0(data->fd[0]);
		FUNC0(data->fd[1]);
		FUNC1(data->conn);
	}

	FUNC2(data);
	return 0;
}