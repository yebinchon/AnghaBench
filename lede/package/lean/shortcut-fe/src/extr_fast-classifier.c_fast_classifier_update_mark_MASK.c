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
struct sfe_connection_mark {int /*<<< orphan*/  mark; int /*<<< orphan*/  protocol; int /*<<< orphan*/  dest_port; int /*<<< orphan*/  src_port; int /*<<< orphan*/  dest_ip; int /*<<< orphan*/  src_ip; } ;
struct sfe_connection {TYPE_1__* sic; } ;
struct TYPE_2__ {int /*<<< orphan*/  mark; } ;

/* Variables and functions */
 struct sfe_connection* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sfe_connections_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sfe_connection_mark *mark, bool is_v4)
{
	struct sfe_connection *conn;

	FUNC1(&sfe_connections_lock);

	conn = FUNC0(&mark->src_ip, &mark->dest_ip,
					 mark->src_port, mark->dest_port,
					 mark->protocol, is_v4);
	if (conn) {
		conn->sic->mark = mark->mark;
	}

	FUNC2(&sfe_connections_lock);
}