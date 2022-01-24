#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int yajl_status ;
typedef  int /*<<< orphan*/  yajl_handle ;
struct workspaces_json_params {char* json; int /*<<< orphan*/ * cur_key; int /*<<< orphan*/ * workspaces_walk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  workspaces_callbacks ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 
#define  yajl_status_client_canceled 130 
#define  yajl_status_error 129 
#define  yajl_status_ok 128 

void FUNC8(char *json) {
    /* FIXME: Fasciliate stream processing, i.e. allow starting to interpret
     * JSON in chunks */
    struct workspaces_json_params params;

    FUNC3();

    params.workspaces_walk = NULL;
    params.cur_key = NULL;
    params.json = json;

    yajl_handle handle;
    yajl_status state;
    handle = FUNC5(&workspaces_callbacks, NULL, (void *)&params);

    state = FUNC7(handle, (const unsigned char *)json, FUNC4(json));

    /* FIXME: Proper error handling for JSON parsing */
    switch (state) {
        case yajl_status_ok:
            break;
        case yajl_status_client_canceled:
        case yajl_status_error:
            FUNC0("Could not parse workspaces reply!\n");
            FUNC2(EXIT_FAILURE);
            break;
    }

    FUNC6(handle);

    FUNC1(params.cur_key);
}