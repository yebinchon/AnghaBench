#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ h2o_token_t ;
struct TYPE_9__ {scalar_t__ len; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC2 (int) ; 
 TYPE_2__ FUNC3 (char const*,size_t) ; 
 TYPE_2__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(const char *src, size_t len, h2o_iovec_t **_name)
{
    h2o_iovec_t name;
    const h2o_token_t *name_token;

    name = FUNC3(src, len);
    if (name.len == 0)
        return -1;

    name = FUNC4(NULL, name.base, name.len);
    FUNC5(name.base, name.len);

    if ((name_token = FUNC1(name.base, name.len)) != NULL) {
        *_name = (h2o_iovec_t *)&name_token->buf;
        FUNC0(name.base);
    } else {
        *_name = FUNC2(sizeof(**_name));
        **_name = name;
    }

    return 0;
}