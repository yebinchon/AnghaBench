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
typedef  int /*<<< orphan*/  h2o_hostconf_t ;
struct TYPE_5__ {int /*<<< orphan*/  global_socketpool; } ;
struct TYPE_6__ {int /*<<< orphan*/  mimemap; TYPE_1__ proxy; int /*<<< orphan*/ ** hosts; } ;
typedef  TYPE_2__ h2o_globalconf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(h2o_globalconf_t *config)
{
    size_t i;

    for (i = 0; config->hosts[i] != NULL; ++i) {
        h2o_hostconf_t *hostconf = config->hosts[i];
        FUNC0(hostconf);
    }
    FUNC1(config->hosts);

    FUNC4(&config->proxy.global_socketpool);
    FUNC3(config->mimemap);
    FUNC2(config);
}