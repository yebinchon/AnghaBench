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
struct evhttp {int /*<<< orphan*/  virtualhosts; int /*<<< orphan*/ * vhost_pattern; int /*<<< orphan*/  sockets; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct evhttp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  next_vhost ; 

int
FUNC3(struct evhttp* http, const char *pattern,
    struct evhttp* vhost)
{
	/* a vhost can only be a vhost once and should not have bound sockets */
	if (vhost->vhost_pattern != NULL ||
	    FUNC0(&vhost->sockets) != NULL)
		return (-1);

	vhost->vhost_pattern = FUNC2(pattern);
	if (vhost->vhost_pattern == NULL)
		return (-1);

	FUNC1(&http->virtualhosts, vhost, next_vhost);

	return (0);
}