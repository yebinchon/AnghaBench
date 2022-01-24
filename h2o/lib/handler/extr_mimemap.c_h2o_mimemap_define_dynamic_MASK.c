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
typedef  int /*<<< orphan*/  h2o_mimemap_type_t ;
typedef  int /*<<< orphan*/  h2o_mimemap_t ;
typedef  int /*<<< orphan*/  h2o_globalconf_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

h2o_mimemap_type_t *FUNC4(h2o_mimemap_t *mimemap, const char **exts, h2o_globalconf_t *globalconf)
{
    /* FIXME: fix memory leak introduced by this a cyclic link (mimemap -> new_type -> mimemap)
     * note also that we may want to update the reference from the dynamic type to the mimemap as we clone the mimemap,
     * but doing so naively would cause unnecessary copies of fastcgi.spawns... */
    h2o_mimemap_type_t *new_type = FUNC0(globalconf, mimemap);
    size_t i;

    for (i = 0; exts[i] != NULL; ++i) {
        if (exts[i][0] == '\0') {
            /* empty string means default */
            FUNC2(mimemap, new_type);
        } else {
            FUNC3(mimemap, exts[i], new_type);
        }
    }
    FUNC1(new_type);
    return new_type;
}