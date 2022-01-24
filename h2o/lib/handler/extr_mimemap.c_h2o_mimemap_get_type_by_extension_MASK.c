#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lcbuf ;
typedef  scalar_t__ khiter_t ;
typedef  int /*<<< orphan*/  h2o_mimemap_type_t ;
struct TYPE_5__ {int /*<<< orphan*/ * default_type; int /*<<< orphan*/  extmap; } ;
typedef  TYPE_1__ h2o_mimemap_t ;
struct TYPE_6__ {int len; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  extmap ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

h2o_mimemap_type_t *FUNC5(h2o_mimemap_t *mimemap, h2o_iovec_t ext)
{
    char lcbuf[256];

    if (0 < ext.len && ext.len < sizeof(lcbuf)) {
        FUNC4(lcbuf, ext.base, ext.len);
        FUNC0(lcbuf, ext.len);
        lcbuf[ext.len] = '\0';
        khiter_t iter = FUNC2(extmap, mimemap->extmap, lcbuf);
        if (iter != FUNC1(mimemap->extmap))
            return FUNC3(mimemap->extmap, iter);
    }
    return mimemap->default_type;
}