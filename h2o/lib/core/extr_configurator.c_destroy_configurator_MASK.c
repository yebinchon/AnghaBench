#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* entries; } ;
struct TYPE_7__ {TYPE_1__ commands; int /*<<< orphan*/  (* dispose ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ h2o_configurator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(h2o_configurator_t *configurator)
{
    if (configurator->dispose != NULL)
        configurator->dispose(configurator);
    FUNC0(configurator->commands.entries);
    FUNC0(configurator);
}