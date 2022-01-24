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
struct string_list {int nr; TYPE_1__* items; } ;
struct socketlist {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,struct socketlist*) ; 

__attribute__((used)) static void FUNC2(struct string_list *listen_addr, int listen_port, struct socketlist *socklist)
{
	if (!listen_addr->nr)
		FUNC1(NULL, listen_port, socklist);
	else {
		int i, socknum;
		for (i = 0; i < listen_addr->nr; i++) {
			socknum = FUNC1(listen_addr->items[i].string,
						   listen_port, socklist);

			if (socknum == 0)
				FUNC0("unable to allocate any listen sockets for host %s on port %u",
					 listen_addr->items[i].string, listen_port);
		}
	}
}