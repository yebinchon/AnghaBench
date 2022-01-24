#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int emit_request_errors; } ;
struct TYPE_6__ {TYPE_1__ error_log; int /*<<< orphan*/ * mimemap; int /*<<< orphan*/  path; int /*<<< orphan*/ * global; } ;
typedef  TYPE_2__ h2o_pathconf_t ;
typedef  int /*<<< orphan*/  h2o_mimemap_t ;
typedef  int /*<<< orphan*/  h2o_globalconf_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(h2o_pathconf_t *pathconf, h2o_globalconf_t *globalconf, const char *path, h2o_mimemap_t *mimemap)
{
    FUNC2(pathconf, 0, sizeof(*pathconf));
    pathconf->global = globalconf;
    if (path != NULL)
        pathconf->path = FUNC1(NULL, path, SIZE_MAX);
    FUNC0(mimemap);
    pathconf->mimemap = mimemap;
    pathconf->error_log.emit_request_errors = 1;
}