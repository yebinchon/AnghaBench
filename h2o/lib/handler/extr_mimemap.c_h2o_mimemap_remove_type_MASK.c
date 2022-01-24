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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(h2o_mimemap_t *mimemap, const char *ext)
{
    khiter_t iter = FUNC3(extmap, mimemap->extmap, ext);
    if (iter != FUNC2(mimemap->extmap)) {
        const char *key = FUNC4(mimemap->extmap, iter);
        h2o_mimemap_type_t *type = FUNC5(mimemap->extmap, iter);
        FUNC6(mimemap, type);
        FUNC0(type);
        FUNC1(extmap, mimemap->extmap, iter);
        FUNC0((char *)key);
        FUNC7(mimemap);
    }
}