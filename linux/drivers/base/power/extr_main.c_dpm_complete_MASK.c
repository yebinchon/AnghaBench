#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct TYPE_7__ {int is_prepared; int /*<<< orphan*/  entry; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_8__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ pm_message_t ;
struct TYPE_9__ {int /*<<< orphan*/  prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  dpm_list ; 
 int /*<<< orphan*/  dpm_list_mtx ; 
 TYPE_3__ dpm_prepared_list ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 struct device* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC16(pm_message_t state)
{
	struct list_head list;

	FUNC15(FUNC1("dpm_complete"), state.event, true);
	FUNC8();

	FUNC0(&list);
	FUNC9(&dpm_list_mtx);
	while (!FUNC5(&dpm_prepared_list)) {
		struct device *dev = FUNC12(dpm_prepared_list.prev);

		FUNC4(dev);
		dev->power.is_prepared = false;
		FUNC6(&dev->power.entry, &list);
		FUNC10(&dpm_list_mtx);

		FUNC14(dev, "", state.event);
		FUNC2(dev, state);
		FUNC13(dev, 0);

		FUNC9(&dpm_list_mtx);
		FUNC11(dev);
	}
	FUNC7(&list, &dpm_list);
	FUNC10(&dpm_list_mtx);

	/* Allow device probing and trigger re-probing of deferred devices */
	FUNC3();
	FUNC15(FUNC1("dpm_complete"), state.event, false);
}