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
struct st_neverbleed_thread_data_t {int /*<<< orphan*/  fd; } ;
struct expbuf_t {int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  neverbleed_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct expbuf_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct expbuf_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct expbuf_t*,char const*) ; 
 scalar_t__ FUNC4 (struct expbuf_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct expbuf_t*,size_t*) ; 
 scalar_t__ FUNC6 (struct expbuf_t*,int /*<<< orphan*/ ) ; 
 struct st_neverbleed_thread_data_t* FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(neverbleed_t *nb, const char *user, int change_socket_ownership)
{
    struct st_neverbleed_thread_data_t *thdata = FUNC7(nb);
    struct expbuf_t buf = {NULL};
    size_t ret;

    FUNC3(&buf, "setuidgid");
    FUNC3(&buf, user);
    FUNC2(&buf, change_socket_ownership);
    if (FUNC6(&buf, thdata->fd) != 0)
        FUNC0(errno != 0 ? "write error" : "connection closed by daemon");
    FUNC1(&buf);

    if (FUNC4(&buf, thdata->fd) != 0)
        FUNC0(errno != 0 ? "read error" : "connection closed by daemon");
    if (FUNC5(&buf, &ret) != 0) {
        errno = 0;
        FUNC0("failed to parse response");
    }
    FUNC1(&buf);

    return (int)ret;
}