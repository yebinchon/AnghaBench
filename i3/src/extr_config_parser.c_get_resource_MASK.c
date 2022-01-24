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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * conn ; 
 int /*<<< orphan*/ * database ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static char *FUNC4(char *name) {
    if (conn == NULL) {
        return NULL;
    }

    /* Load the resource database lazily. */
    if (database == NULL) {
        database = FUNC1(conn);

        if (database == NULL) {
            FUNC0("Failed to open the resource database.\n");

            /* Load an empty database so we don't keep trying to load the
             * default database over and over again. */
            database = FUNC2("");

            return NULL;
        }
    }

    char *resource;
    FUNC3(database, name, NULL, &resource);
    return resource;
}