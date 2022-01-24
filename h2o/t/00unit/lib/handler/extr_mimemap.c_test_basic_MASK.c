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
typedef  int /*<<< orphan*/  h2o_mimemap_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_default_attributes ; 

__attribute__((used)) static void FUNC16()
{
    h2o_mimemap_t *mimemap = FUNC4(), *mimemap2;

    FUNC15("default-attributes", test_default_attributes);

    /* default and set default */
    FUNC13(FUNC11(FUNC6(mimemap), "application/octet-stream"));
    {
        char buf[sizeof("text/plain")];
        FUNC14(buf, "text/plain");
        FUNC10(mimemap, buf, NULL);
        FUNC12(buf, 0, sizeof(buf));
    }
    FUNC13(FUNC11(FUNC6(mimemap), "text/plain"));

    /* set and overwrite */
    FUNC5(mimemap, "foo", "example/foo", NULL);
    FUNC13(FUNC11(FUNC7(mimemap, FUNC1(FUNC0("foo"))), "example/foo"));
    FUNC13(FUNC11(FUNC7(mimemap, FUNC1(FUNC0("FOO"))), "example/foo"));
    FUNC13(FUNC7(mimemap, FUNC1(FUNC0("foo"))) ==
       FUNC8(mimemap, FUNC1(FUNC0("example/foo")), 0));
    FUNC5(mimemap, "foo", "example/overwritten", NULL);
    FUNC13(FUNC11(FUNC7(mimemap, FUNC1(FUNC0("foo"))), "example/overwritten"));
    FUNC13(FUNC7(mimemap, FUNC1(FUNC0("foo"))) ==
       FUNC8(mimemap, FUNC1(FUNC0("example/overwritten")), 0));
    FUNC13(FUNC8(mimemap, FUNC1(FUNC0("example/foo")), 0) == NULL);

    /* clone and release */
    mimemap2 = FUNC3(mimemap);
    FUNC13(FUNC11(FUNC6(mimemap2), "text/plain"));
    FUNC13(FUNC11(FUNC7(mimemap2, FUNC1(FUNC0("foo"))), "example/overwritten"));
    FUNC13(FUNC7(mimemap, FUNC1(FUNC0("foo"))) ==
       FUNC8(mimemap, FUNC1(FUNC0("example/overwritten")), 0));
    FUNC2(mimemap2);

    /* check original */
    FUNC13(FUNC11(FUNC6(mimemap), "text/plain"));
    FUNC13(FUNC11(FUNC7(mimemap, FUNC1(FUNC0("foo"))), "example/overwritten"));

    /* remove */
    FUNC9(mimemap, "foo");
    FUNC13(FUNC11(FUNC7(mimemap, FUNC1(FUNC0("foo"))), "text/plain"));
    FUNC13(FUNC8(mimemap, FUNC1(FUNC0("example/overwritten")), 0) == NULL);
    FUNC9(mimemap, "foo");
    FUNC13(FUNC11(FUNC7(mimemap, FUNC1(FUNC0("foo"))), "text/plain"));

    FUNC2(mimemap);
}