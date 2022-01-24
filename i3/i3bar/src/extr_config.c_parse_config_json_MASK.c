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
typedef  int yajl_status ;
typedef  int /*<<< orphan*/  yajl_handle ;
struct TYPE_2__ {int /*<<< orphan*/  tray_outputs; int /*<<< orphan*/  bindings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outputs_callbacks ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 
#define  yajl_status_client_canceled 130 
#define  yajl_status_error 129 
#define  yajl_status_ok 128 

void FUNC7(char *json) {
    yajl_handle handle;
    yajl_status state;
    handle = FUNC4(&outputs_callbacks, NULL, NULL);

    FUNC1(&(config.bindings));
    FUNC1(&(config.tray_outputs));

    state = FUNC6(handle, (const unsigned char *)json, FUNC3(json));

    /* FIXME: Proper error handling for JSON parsing */
    switch (state) {
        case yajl_status_ok:
            break;
        case yajl_status_client_canceled:
        case yajl_status_error:
            FUNC0("Could not parse config reply!\n");
            FUNC2(EXIT_FAILURE);
            break;
    }

    FUNC5(handle);
}