#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_3__ {int /*<<< orphan*/ * receiving; TYPE_2__ sending; } ;
struct st_fcgi_generator_t {TYPE_1__ resp; int /*<<< orphan*/ * sock; int /*<<< orphan*/ * connect_req; int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct st_fcgi_generator_t *generator)
{
    /* can be called more than once */
    if (FUNC4(&generator->timeout))
        FUNC5(&generator->timeout);
    if (generator->connect_req != NULL) {
        FUNC3(generator->connect_req);
        generator->connect_req = NULL;
    }
    if (generator->sock != NULL) {
        FUNC2(generator->sock);
        generator->sock = NULL;
    }
    if (generator->resp.sending.buf != NULL)
        FUNC1(&generator->resp.sending);
    if (generator->resp.receiving != NULL)
        FUNC0(&generator->resp.receiving);
}