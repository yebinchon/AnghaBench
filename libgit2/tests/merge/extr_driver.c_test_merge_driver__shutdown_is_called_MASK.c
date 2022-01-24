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
struct TYPE_4__ {int initialized; int shutdown; } ;
struct TYPE_3__ {scalar_t__ shutdown; scalar_t__ initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__ test_driver_custom ; 
 TYPE_1__ test_driver_wildcard ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
    test_driver_custom.initialized = 0;
    test_driver_custom.shutdown = 0;
    test_driver_wildcard.initialized = 0;
    test_driver_wildcard.shutdown = 0;
    
    /* run the merge with the custom driver */
    FUNC2("custom");
    FUNC1();
    
	/* unregister the drivers, ensure their shutdown function is called */
	FUNC4();

    /* since the `custom` driver was used, it should have been initialized and
     * shutdown, but the wildcard driver was not used at all and should not
     * have been initialized or shutdown.
     */
	FUNC0(test_driver_custom.initialized);
	FUNC0(test_driver_custom.shutdown);
	FUNC0(!test_driver_wildcard.initialized);
	FUNC0(!test_driver_wildcard.shutdown);

	FUNC3();
}