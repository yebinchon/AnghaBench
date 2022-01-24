#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fore200e {int /*<<< orphan*/  state; TYPE_1__* bus; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* configure ) (struct fore200e*) ;scalar_t__ (* map ) (struct fore200e*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FORE200E_STATE_COMPLETE ; 
 scalar_t__ FUNC0 (struct fore200e*) ; 
 scalar_t__ FUNC1 (struct fore200e*) ; 
 scalar_t__ FUNC2 (struct fore200e*) ; 
 scalar_t__ FUNC3 (struct fore200e*) ; 
 scalar_t__ FUNC4 (struct fore200e*) ; 
 scalar_t__ FUNC5 (struct fore200e*) ; 
 scalar_t__ FUNC6 (struct fore200e*) ; 
 scalar_t__ FUNC7 (struct fore200e*) ; 
 scalar_t__ FUNC8 (struct fore200e*) ; 
 scalar_t__ FUNC9 (struct fore200e*,struct device*) ; 
 scalar_t__ FUNC10 (struct fore200e*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct fore200e*) ; 
 scalar_t__ FUNC12 (struct fore200e*) ; 
 scalar_t__ FUNC13 (struct fore200e*) ; 

__attribute__((used)) static int FUNC14(struct fore200e *fore200e, struct device *parent)
{
    if (FUNC9(fore200e, parent) < 0)
	return -ENODEV;
    
    if (fore200e->bus->configure(fore200e) < 0)
	return -ENODEV;

    if (fore200e->bus->map(fore200e) < 0)
	return -ENODEV;

    if (FUNC10(fore200e, 1) < 0)
	return -ENODEV;

    if (FUNC8(fore200e) < 0)
	return -ENODEV;

    if (FUNC6(fore200e) < 0)
	return -ENODEV;

    if (FUNC3(fore200e) < 0)
	return -ENOMEM;

    if (FUNC5(fore200e) < 0)
	return -ENOMEM;

    if (FUNC4(fore200e) < 0)
	return -ENOMEM;

    if (FUNC2(fore200e) < 0)
	return -ENOMEM;

    if (FUNC0(fore200e) < 0)
	return -ENOMEM;

    if (FUNC1(fore200e) < 0)
	return -EIO;

    if (FUNC7(fore200e) < 0)
	return -EBUSY;

    FUNC11(fore200e);

    /* all done, board initialization is now complete */
    fore200e->state = FORE200E_STATE_COMPLETE;
    return 0;
}