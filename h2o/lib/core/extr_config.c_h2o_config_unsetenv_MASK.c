#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t size; TYPE_3__* entries; } ;
struct TYPE_5__ {TYPE_2__ unsets; } ;
typedef  TYPE_1__ h2o_envconf_t ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t) ; 
 TYPE_3__ FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 size_t FUNC3 (char const*) ; 

void FUNC4(h2o_envconf_t *envconf, const char *name)
{
    size_t i, name_len = FUNC3(name);

    /* do nothing if already set */
    for (i = 0; i != envconf->unsets.size; ++i)
        if (FUNC0(envconf->unsets.entries[i].base, envconf->unsets.entries[i].len, name, name_len))
            return;
    /* register */
    FUNC2(NULL, &envconf->unsets, envconf->unsets.size + 1);
    envconf->unsets.entries[envconf->unsets.size++] = FUNC1(NULL, name, name_len);
}