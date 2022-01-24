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
struct mode_json_params {int /*<<< orphan*/  cur_key; TYPE_1__* mode; int /*<<< orphan*/  pango_markup; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  name_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *params_) {
    struct mode_json_params *params = (struct mode_json_params *)params_;

    /* Save the name */
    params->mode->name = FUNC3(params->name);
    FUNC4(params->mode->name, params->pango_markup);
    /* Save its rendered width */
    params->mode->name_width = FUNC5(params->mode->name);

    FUNC0("Got mode change: %s\n", FUNC2(params->mode->name));
    FUNC1(params->cur_key);

    return 1;
}