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
typedef  int /*<<< orphan*/  yajl_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*) ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yajl_allow_comments ; 
 int /*<<< orphan*/  yajl_allow_multiple_values ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ ,int,unsigned char const*,size_t const) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,unsigned char const*,size_t const) ; 
 scalar_t__ yajl_status_ok ; 

bool FUNC9(const char *buf, const size_t len) {
    bool valid = true;
    yajl_handle hand = FUNC2(NULL, NULL, NULL);
    /* Allowing comments allows for more user-friendly layout files. */
    FUNC4(hand, yajl_allow_comments, true);
    /* Allow multiple values, i.e. multiple nodes to attach */
    FUNC4(hand, yajl_allow_multiple_values, true);

    FUNC1(LC_NUMERIC, "C");
    if (FUNC8(hand, (const unsigned char *)buf, len) != yajl_status_ok) {
        unsigned char *str = FUNC7(hand, 1, (const unsigned char *)buf, len);
        FUNC0("JSON parsing error: %s\n", str);
        FUNC6(hand, str);
        valid = false;
    }
    FUNC1(LC_NUMERIC, "");

    FUNC3(hand);
    FUNC5(hand);

    return valid;
}