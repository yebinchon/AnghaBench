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
typedef  int /*<<< orphan*/  xcb_xrm_database_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 double HUGE_VAL ; 
 int /*<<< orphan*/ * conn ; 
 scalar_t__ dpi ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (double) ; 
 double FUNC5 (char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char**) ; 

void FUNC9(void) {
    xcb_xrm_database_t *database = NULL;
    char *resource = NULL;

    if (conn == NULL) {
        goto init_dpi_end;
    }

    database = FUNC7(conn);
    if (database == NULL) {
        FUNC1("Failed to open the resource database.\n");
        goto init_dpi_end;
    }

    FUNC8(database, "Xft.dpi", NULL, &resource);
    if (resource == NULL) {
        FUNC0("Resource Xft.dpi not specified, skipping.\n");
        goto init_dpi_end;
    }

    char *endptr;
    double in_dpi = FUNC5(resource, &endptr);
    if (in_dpi == HUGE_VAL || dpi < 0 || *endptr != '\0' || endptr == resource) {
        FUNC1("Xft.dpi = %s is an invalid number and couldn't be parsed.\n", resource);
        dpi = 0;
        goto init_dpi_end;
    }
    dpi = FUNC4(in_dpi);

    FUNC0("Found Xft.dpi = %ld.\n", dpi);

init_dpi_end:
    FUNC2(resource);

    if (database != NULL) {
        FUNC6(database);
    }

    if (dpi == 0) {
        FUNC0("Using fallback for calculating DPI.\n");
        dpi = FUNC3();
        FUNC0("Using dpi = %ld\n", dpi);
    }
}