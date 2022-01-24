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
struct TYPE_5__ {char const* base; size_t len; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_1__*,char,size_t*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
    h2o_iovec_t iter, value;
    const char *name;
    size_t name_len;

#define NEXT()                                                                                                                     \
    if ((name = h2o_next_token(&iter, ',', &name_len, &value)) == NULL) {                                                          \
        ok(0);                                                                                                                     \
        return;                                                                                                                    \
    }

    iter = FUNC2(FUNC0("public, max-age=86400, must-revalidate"));
    NEXT();
    FUNC5(FUNC3(name, name_len, FUNC0("public")));
    FUNC5(value.base == NULL);
    FUNC5(value.len == 0);
    NEXT();
    FUNC5(FUNC3(name, name_len, FUNC0("max-age")));
    FUNC5(FUNC3(value.base, value.len, FUNC0("86400")));
    NEXT();
    FUNC5(FUNC3(name, name_len, FUNC0("must-revalidate")));
    FUNC5(value.base == NULL);
    FUNC5(value.len == 0);
    name = FUNC4(&iter, ',', &name_len, &value);
    FUNC5(name == NULL);

    iter = FUNC2(FUNC0("public, max-age = 86400 = c , must-revalidate="));
    NEXT();
    FUNC5(FUNC3(name, name_len, FUNC0("public")));
    FUNC5(value.base == NULL);
    FUNC5(value.len == 0);
    NEXT();
    FUNC5(FUNC3(name, name_len, FUNC0("max-age")));
    FUNC5(FUNC3(value.base, value.len, FUNC0("86400 = c")));
    NEXT();
    FUNC5(FUNC3(name, name_len, FUNC0("must-revalidate")));
    name = FUNC4(&iter, ',', &name_len, &value);
    FUNC5(FUNC3(value.base, value.len, FUNC0("")));

#undef NEXT
}