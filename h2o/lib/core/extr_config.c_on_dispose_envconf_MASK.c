#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t size; TYPE_4__* entries; } ;
struct TYPE_5__ {size_t size; TYPE_4__* entries; } ;
struct TYPE_7__ {TYPE_2__ sets; TYPE_1__ unsets; int /*<<< orphan*/ * parent; } ;
typedef  TYPE_3__ h2o_envconf_t ;
struct TYPE_8__ {int /*<<< orphan*/ * base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *_envconf)
{
    h2o_envconf_t *envconf = _envconf;
    size_t i;

    if (envconf->parent != NULL)
        FUNC1(envconf->parent);

    for (i = 0; i != envconf->unsets.size; ++i)
        FUNC1(envconf->unsets.entries[i].base);
    FUNC0(envconf->unsets.entries);
    for (i = 0; i != envconf->sets.size; ++i)
        FUNC1(envconf->sets.entries[i].base);
    FUNC0(envconf->sets.entries);
}