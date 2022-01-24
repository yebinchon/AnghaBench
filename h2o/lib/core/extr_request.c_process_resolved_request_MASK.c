#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* pathconf; TYPE_1__* scheme; int /*<<< orphan*/  authority; int /*<<< orphan*/ * overrides; } ;
typedef  TYPE_4__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_hostconf_t ;
struct TYPE_10__ {int /*<<< orphan*/  entries; } ;
struct TYPE_11__ {TYPE_2__ handlers; } ;
struct TYPE_9__ {int /*<<< orphan*/  default_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(h2o_req_t *req, h2o_hostconf_t **hosts)
{
    h2o_hostconf_t *hostconf;
    if (req->overrides == NULL && (hostconf = FUNC1(hosts, req->authority, req->scheme->default_port)) != NULL) {
        FUNC3(req, hostconf);
        FUNC0(req, req->pathconf->handlers.entries);
        return;
    }

    /* uses the current pathconf, in other words, proxy uses the previous pathconf for building filters */
    FUNC2(req);
}