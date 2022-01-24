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
struct string_list {int dummy; } ;
struct socketlist {scalar_t__ nr; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
struct credentials {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct credentials*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct socketlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,int,struct socketlist*) ; 

__attribute__((used)) static int FUNC5(struct string_list *listen_addr, int listen_port,
    struct credentials *cred)
{
	struct socketlist socklist = { NULL, 0, 0 };

	FUNC4(listen_addr, listen_port, &socklist);
	if (socklist.nr == 0)
		FUNC0("unable to allocate any listen sockets on port %u",
		    listen_port);

	FUNC1(cred);

	FUNC2("Ready to rumble");

	return FUNC3(&socklist);
}