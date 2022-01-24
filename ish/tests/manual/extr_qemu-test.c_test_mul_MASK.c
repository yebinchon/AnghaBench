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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int) ; 

void FUNC20(void)
{
    FUNC9(0x1234561d, 4);
    FUNC9(3, -4);
    FUNC9(0x80, 0x80);
    FUNC9(0x10, 0x10);

    FUNC14(0, 0x1234001d, 45);
    FUNC14(0, 23, -45);
    FUNC14(0, 0x8000, 0x8000);
    FUNC14(0, 0x100, 0x100);

    FUNC10(0, 0x1234001d, 45);
    FUNC10(0, 23, -45);
    FUNC10(0, 0x80000000, 0x80000000);
    FUNC10(0, 0x10000, 0x10000);

    FUNC16(0x1234561d, 4);
    FUNC16(3, -4);
    FUNC16(0x80, 0x80);
    FUNC16(0x10, 0x10);

    FUNC19(0, 0x1234001d, 45);
    FUNC19(0, 23, -45);
    FUNC19(0, 0x8000, 0x8000);
    FUNC19(0, 0x100, 0x100);

    FUNC17(0, 0x1234001d, 45);
    FUNC17(0, 23, -45);
    FUNC17(0, 0x80000000, 0x80000000);
    FUNC17(0, 0x10000, 0x10000);

    FUNC15(0x1234001d, 45);
    FUNC15(23, -45);
    FUNC15(0x8000, 0x8000);
    FUNC15(0x100, 0x100);

    FUNC11(0x1234001d, 45);
    FUNC11(23, -45);
    FUNC11(0x80000000, 0x80000000);
    FUNC11(0x10000, 0x10000);

    FUNC0("w", "w", 45, 0x1234);
    FUNC0("w", "w", -45, 23);
    FUNC0("w", "w", 0x8000, 0x80000000);
    FUNC0("w", "w", 0x7fff, 0x1000);

    FUNC0("l", "k", 45, 0x1234);
    FUNC0("l", "k", -45, 23);
    FUNC0("l", "k", 0x8000, 0x80000000);
    FUNC0("l", "k", 0x7fff, 0x1000);

    FUNC5(0x12341678, 0x127e);
    FUNC5(0x43210123, -5);
    FUNC5(0x12340004, -1);

    FUNC8(0, 0x12345678, 12347);
    FUNC8(0, -23223, -45);
    FUNC8(0, 0x12348000, -1);
    FUNC8(0x12343, 0x12345678, 0x81238567);

    FUNC6(0, 0x12345678, 12347);
    FUNC6(0, -233223, -45);
    FUNC6(0, 0x80000000, -1);
    FUNC6(0x12343, 0x12345678, 0x81234567);

    FUNC1(0x12341678, 0x127e);
    FUNC1(0x43210123, -5);
    FUNC1(0x12340004, -1);

    FUNC4(0, 0x12345678, 12347);
    FUNC4(0, -23223, -45);
    FUNC4(0, 0x12348000, -1);
    FUNC4(0x12343, 0x12345678, 0x81238567);

    FUNC2(0, 0x12345678, 12347);
    FUNC2(0, -233223, -45);
    FUNC2(0, 0x80000000, -1);
    FUNC2(0x12343, 0x12345678, 0x81234567);

#if defined(__x86_64__)
    FUNC12(0, 0x1234001d1234001d, 45);
    FUNC12(0, 23, -45);
    FUNC12(0, 0x8000000000000000, 0x8000000000000000);
    FUNC12(0, 0x100000000, 0x100000000);

    FUNC18(0, 0x1234001d1234001d, 45);
    FUNC18(0, 23, -45);
    FUNC18(0, 0x8000000000000000, 0x8000000000000000);
    FUNC18(0, 0x100000000, 0x100000000);

    FUNC13(0x1234001d1234001d, 45);
    FUNC13(23, -45);
    FUNC13(0x8000000000000000, 0x8000000000000000);
    FUNC13(0x100000000, 0x100000000);

    FUNC0("q", "", 45, 0x12341234);
    FUNC0("q", "", -45, 23);
    FUNC0("q", "", 0x8000, 0x8000000000000000);
    FUNC0("q", "", 0x7fff, 0x10000000);

    FUNC7(0, 0x12345678abcdef, 12347);
    FUNC7(0, -233223, -45);
    FUNC7(0, 0x8000000000000000, -1);
    FUNC7(0x12343, 0x12345678, 0x81234567);

    FUNC3(0, 0x12345678abcdef, 12347);
    FUNC3(0, -233223, -45);
    FUNC3(0, 0x8000000000000000, -1);
    FUNC3(0x12343, 0x12345678, 0x81234567);
#endif
}