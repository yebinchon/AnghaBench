#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ khiter_t ;
typedef  char h2o_mimemap_type_t ;
struct TYPE_5__ {int /*<<< orphan*/  extmap; } ;
typedef  TYPE_1__ h2o_mimemap_t ;

/* Variables and functions */
 int /*<<< orphan*/  extmap ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(h2o_mimemap_t *mimemap)
{
    khiter_t iter;

    for (iter = FUNC1(mimemap->extmap); iter != FUNC3(mimemap->extmap); ++iter) {
        if (!FUNC4(mimemap->extmap, iter))
            continue;
        const char *key = FUNC5(mimemap->extmap, iter);
        h2o_mimemap_type_t *type = FUNC6(mimemap->extmap, iter);
        FUNC7(mimemap, type);
        FUNC0(type);
        FUNC2(extmap, mimemap->extmap, iter);
        FUNC0((char *)key);
    }
    FUNC8(mimemap);
}