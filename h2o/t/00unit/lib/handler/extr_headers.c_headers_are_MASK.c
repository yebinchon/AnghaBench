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
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ h2o_iovec_t ;
struct TYPE_9__ {size_t size; TYPE_1__* entries; } ;
typedef  TYPE_3__ h2o_headers_t ;
struct TYPE_7__ {int /*<<< orphan*/  value; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static int FUNC4(h2o_mem_pool_t *pool, h2o_headers_t *headers, const char *s, size_t len)
{
    size_t i;
    h2o_iovec_t flattened = {NULL};

    for (i = 0; i != headers->size; ++i) {
        flattened = FUNC1(pool, flattened, *headers->entries[i].name, FUNC2(FUNC0(": ")),
                               headers->entries[i].value, FUNC2(FUNC0("\n")));
    }

    return FUNC3(flattened.base, flattened.len, s, len);
}