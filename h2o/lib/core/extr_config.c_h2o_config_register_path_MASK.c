#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_pathconf_t ;
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/ * entries; } ;
struct TYPE_4__ {int /*<<< orphan*/  mimemap; int /*<<< orphan*/  global; TYPE_2__ paths; } ;
typedef  TYPE_1__ h2o_hostconf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 

h2o_pathconf_t *FUNC2(h2o_hostconf_t *hostconf, const char *path, int flags)
{
    h2o_pathconf_t *pathconf;

    FUNC1(NULL, &hostconf->paths, hostconf->paths.size + 1);
    pathconf = hostconf->paths.entries + hostconf->paths.size++;

    FUNC0(pathconf, hostconf->global, path, hostconf->mimemap);

    return pathconf;
}