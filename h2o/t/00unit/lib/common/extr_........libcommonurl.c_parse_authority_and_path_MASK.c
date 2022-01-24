#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* path; void* authority; int /*<<< orphan*/  _port; int /*<<< orphan*/  host; } ;
typedef  TYPE_1__ h2o_url_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char const*,...) ; 
 char* FUNC2 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const char *src, const char *url_end, h2o_url_t *parsed)
{
    const char *p = FUNC2(src, url_end - src, &parsed->host, &parsed->_port);
    if (p == NULL)
        return -1;
    parsed->authority = FUNC1(src, p - src);
    if (p == url_end) {
        parsed->path = FUNC1(FUNC0("/"));
    } else {
        if (*p != '/')
            return -1;
        parsed->path = FUNC1(p, url_end - p);
    }
    return 0;
}