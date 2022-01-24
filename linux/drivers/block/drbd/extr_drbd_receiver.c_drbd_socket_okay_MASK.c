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
struct socket {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int MSG_DONTWAIT ; 
 int MSG_PEEK ; 
 int FUNC0 (struct socket*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 

__attribute__((used)) static bool FUNC2(struct socket **sock)
{
	int rr;
	char tb[4];

	if (!*sock)
		return false;

	rr = FUNC0(*sock, tb, 4, MSG_DONTWAIT | MSG_PEEK);

	if (rr > 0 || rr == -EAGAIN) {
		return true;
	} else {
		FUNC1(*sock);
		*sock = NULL;
		return false;
	}
}