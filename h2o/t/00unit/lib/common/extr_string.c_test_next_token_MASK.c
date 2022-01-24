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
typedef  int /*<<< orphan*/  h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
    h2o_iovec_t iter;
    const char *token;
    size_t token_len;

#define NEXT()                                                                                                                     \
    if ((token = h2o_next_token(&iter, ',', &token_len, NULL)) == NULL) {                                                          \
        ok(0);                                                                                                                     \
        return;                                                                                                                    \
    }

    iter = FUNC2(FUNC0("public, max-age=86400, must-revalidate"));
    NEXT();
    FUNC5(FUNC3(token, token_len, FUNC0("public")));
    NEXT();
    FUNC5(FUNC3(token, token_len, FUNC0("max-age=86400")));
    NEXT();
    FUNC5(FUNC3(token, token_len, FUNC0("must-revalidate")));
    token = FUNC4(&iter, ',', &token_len, NULL);
    FUNC5(token == NULL);

    iter = FUNC2(FUNC0("  public  ,max-age=86400  ,"));
    NEXT();
    FUNC5(FUNC3(token, token_len, FUNC0("public")));
    NEXT();
    FUNC5(FUNC3(token, token_len, FUNC0("max-age=86400")));
    token = FUNC4(&iter, ',', &token_len, NULL);
    FUNC5(token == NULL);

    iter = FUNC2(FUNC0(""));
    token = FUNC4(&iter, ',', &token_len, NULL);
    FUNC5(token == NULL);

    iter = FUNC2(FUNC0(", ,a, "));
    NEXT();
    FUNC5(token_len == 0);
    NEXT();
    FUNC5(token_len == 0);
    NEXT();
    FUNC5(FUNC3(token, token_len, FUNC0("a")));
    token = FUNC4(&iter, ',', &token_len, NULL);
    FUNC5(token == NULL);

#undef NEXT
}