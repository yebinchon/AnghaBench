#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int,TYPE_1__**) ; 
 TYPE_1__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *src, h2o_iovec_t **name, h2o_iovec_t *value)
{
    const char *colon = FUNC3(src, ':');

    if (colon == NULL)
        return -1;

    if (FUNC0(src, colon - src, name) != 0)
        return -1;
    *value = FUNC1(colon + 1, FUNC4(colon + 1));
    *value = FUNC2(NULL, value->base, value->len);

    return 0;
}