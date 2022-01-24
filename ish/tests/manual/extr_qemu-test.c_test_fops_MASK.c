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
 double FUNC0 (double) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double,double) ; 
 double FUNC4 (double) ; 
 double FUNC5 (double) ; 
 double FUNC6 (double,double) ; 
 double FUNC7 (double) ; 
 int /*<<< orphan*/  FUNC8 (char*,double,double,...) ; 
 double FUNC9 (double) ; 
 double FUNC10 (double) ; 
 double FUNC11 (double) ; 

void FUNC12(double a, double b)
{
    FUNC8("a=%f b=%f a+b=%f\n", a, b, a + b);
    FUNC8("a=%f b=%f a-b=%f\n", a, b, a - b);
    FUNC8("a=%f b=%f a*b=%f\n", a, b, a * b);
    FUNC8("a=%f b=%f a/b=%f\n", a, b, a / b);
    FUNC8("a=%f b=%f fmod(a, b)=%f\n", a, b, FUNC6(a, b));
    FUNC8("a=%f sqrt(a)=%f\n", a, FUNC10(a));
    FUNC8("a=%f sin(a)=%f\n", a, FUNC9(a));
    FUNC8("a=%f cos(a)=%f\n", a, FUNC4(a));
    FUNC8("a=%f tan(a)=%f\n", a, FUNC11(a));
    FUNC8("a=%f log(a)=%f\n", a, FUNC7(a));
    FUNC8("a=%f exp(a)=%f\n", a, FUNC5(a));
    FUNC8("a=%f b=%f atan2(a, b)=%f\n", a, b, FUNC3(a, b));
    /* just to test some op combining */
    FUNC8("a=%f asin(sin(a))=%f\n", a, FUNC1(FUNC9(a)));
    FUNC8("a=%f acos(cos(a))=%f\n", a, FUNC0(FUNC4(a)));
    FUNC8("a=%f atan(tan(a))=%f\n", a, FUNC2(FUNC11(a)));

}