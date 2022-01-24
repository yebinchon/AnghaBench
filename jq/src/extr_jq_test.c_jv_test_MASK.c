#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nasty ;
struct TYPE_38__ {void* ptr; } ;
struct TYPE_39__ {TYPE_1__ u; } ;
typedef  TYPE_2__ jv ;
typedef  int /*<<< orphan*/  big ;

/* Variables and functions */
 scalar_t__ JV_KIND_ARRAY ; 
 scalar_t__ JV_KIND_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ FUNC1 () ; 
 TYPE_2__ FUNC2 (TYPE_2__,TYPE_2__) ; 
 TYPE_2__ FUNC3 (TYPE_2__,int) ; 
 int FUNC4 (TYPE_2__) ; 
 TYPE_2__ FUNC5 (TYPE_2__,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ FUNC6 (TYPE_2__) ; 
 int FUNC7 (TYPE_2__,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__) ; 
 scalar_t__ FUNC9 (TYPE_2__) ; 
 int FUNC10 (TYPE_2__) ; 
 TYPE_2__ FUNC11 (TYPE_2__) ; 
 TYPE_2__ FUNC12 (int) ; 
 int FUNC13 (TYPE_2__) ; 
 TYPE_2__ FUNC14 () ; 
 TYPE_2__ FUNC15 (TYPE_2__,TYPE_2__) ; 
 TYPE_2__ FUNC16 (TYPE_2__,TYPE_2__,TYPE_2__) ; 
 TYPE_2__ FUNC17 (char*) ; 
 TYPE_2__ FUNC18 (char*) ; 
 TYPE_2__ FUNC19 (char*,...) ; 
 scalar_t__ FUNC20 (TYPE_2__) ; 
 int FUNC21 (TYPE_2__) ; 
 TYPE_2__ FUNC22 (char*,int) ; 
 char* FUNC23 (TYPE_2__) ; 
 scalar_t__ FUNC24 (char*,char*) ; 
 scalar_t__ FUNC25 (char*) ; 

__attribute__((used)) static void FUNC26() {
  /// JSON parser regression tests
  {
    jv v = FUNC17("{\"a':\"12\"}");
    FUNC0(FUNC9(v) == JV_KIND_INVALID);
    v = FUNC11(v);
    FUNC0(FUNC24(FUNC23(v), "Expected separator between values at line 1, column 9 (while parsing '{\"a':\"12\"}')") == 0);
    FUNC8(v);
  }
  /// Arrays and numbers
  {
    jv a = FUNC1();
    FUNC0(FUNC9(a) == JV_KIND_ARRAY);
    FUNC0(FUNC4(FUNC6(a)) == 0);
    FUNC0(FUNC4(FUNC6(a)) == 0);

    a = FUNC2(a, FUNC12(42));
    FUNC0(FUNC4(FUNC6(a)) == 1);
    FUNC0(FUNC13(FUNC3(FUNC6(a), 0)) == 42);

    jv a2 = FUNC2(FUNC1(), FUNC12(42));
    FUNC0(FUNC7(FUNC6(a), FUNC6(a)));
    FUNC0(FUNC7(FUNC6(a2), FUNC6(a2)));
    FUNC0(FUNC7(FUNC6(a), FUNC6(a2)));
    FUNC0(FUNC7(FUNC6(a2), FUNC6(a)));
    FUNC8(a2);

    a2 = FUNC2(FUNC1(), FUNC12(19));
    FUNC0(!FUNC7(FUNC6(a), FUNC6(a2)));
    FUNC0(!FUNC7(FUNC6(a2), FUNC6(a)));
    FUNC8(a2);


    FUNC0(FUNC10(a) == 1);
    a = FUNC2(a, FUNC6(a));
    FUNC0(FUNC10(a) == 1);

    FUNC0(FUNC4(FUNC6(a)) == 2);
    FUNC0(FUNC13(FUNC3(FUNC6(a), 0)) == 42);

    for (int i=0; i<10; i++) {
      jv subarray = FUNC3(FUNC6(a), 1);
      FUNC0(FUNC9(subarray) == JV_KIND_ARRAY);
      FUNC0(FUNC4(FUNC6(subarray)) == 1);
      FUNC0(FUNC13(FUNC3(FUNC6(subarray), 0)) == 42);
      FUNC8(subarray);
    }


    jv subarray = FUNC3(FUNC6(a), 1);
    FUNC0(FUNC9(subarray) == JV_KIND_ARRAY);
    FUNC0(FUNC4(FUNC6(subarray)) == 1);
    FUNC0(FUNC13(FUNC3(FUNC6(subarray), 0)) == 42);

    jv sub2 = FUNC6(subarray);
    sub2 = FUNC2(sub2, FUNC12(19));

    FUNC0(FUNC9(sub2) == JV_KIND_ARRAY);
    FUNC0(FUNC4(FUNC6(sub2)) == 2);
    FUNC0(FUNC13(FUNC3(FUNC6(sub2), 0)) == 42);
    FUNC0(FUNC13(FUNC3(FUNC6(sub2), 1)) == 19);

    FUNC0(FUNC9(subarray) == JV_KIND_ARRAY);
    FUNC0(FUNC4(FUNC6(subarray)) == 1);
    FUNC0(FUNC13(FUNC3(FUNC6(subarray), 0)) == 42);

    FUNC8(subarray);

    void* before = sub2.u.ptr;
    sub2 = FUNC2(sub2, FUNC12(200));
    void* after = sub2.u.ptr;
    FUNC0(before == after);
    FUNC8(sub2);

    jv a3 = FUNC2(FUNC6(a), FUNC12(19));
    FUNC0(FUNC4(FUNC6(a3)) == 3);
    FUNC0(FUNC13(FUNC3(FUNC6(a3), 0)) == 42);
    FUNC0(FUNC4(FUNC3(FUNC6(a3), 1)) == 1);
    FUNC0(FUNC13(FUNC3(FUNC6(a3), 2)) == 19);
    FUNC8(a3);


    jv a4 = FUNC1();
    a4 = FUNC2(a4, FUNC12(1));
    a4 = FUNC2(a4, FUNC12(2));
    jv a5 = FUNC6(a4);
    a4 = FUNC2(a4, FUNC12(3));
    a4 = FUNC5(a4, 0, 1);
    FUNC0(FUNC4(FUNC6(a4)) == 1);
    a4 = FUNC2(a4, FUNC12(4));
    FUNC0(FUNC4(FUNC6(a4)) == 2);
    FUNC0(FUNC4(FUNC6(a5)) == 2);
    FUNC8(a4);
    FUNC8(a5);


    FUNC0(FUNC4(FUNC6(a)) == 2);
    FUNC0(FUNC13(FUNC3(FUNC6(a), 0)) == 42);
    FUNC0(FUNC4(FUNC3(FUNC6(a), 1)) == 1);


    //jv_dump(jv_copy(a), 0); printf("\n");
    FUNC8(a);
  }


  /// Strings
  {
    FUNC0(FUNC7(FUNC18("foo"), FUNC22("foo", 3)));
    char nasty[] = "foo\0";
    jv shortstr = FUNC18(nasty), longstr = FUNC22(nasty, sizeof(nasty));
    FUNC0(FUNC21(FUNC6(shortstr)) == (int)FUNC25(nasty));
    FUNC0(FUNC21(FUNC6(longstr)) == (int)sizeof(nasty));
    FUNC8(shortstr);
    FUNC8(longstr);


    char a1s[] = "hello", a2s[] = "hello", bs[] = "goodbye";
    jv a1 = FUNC18(a1s), a2 = FUNC18(a2s), b = FUNC18(bs);
    FUNC0(FUNC7(FUNC6(a1), FUNC6(a2)));
    FUNC0(FUNC7(FUNC6(a2), FUNC6(a1)));
    FUNC0(!FUNC7(FUNC6(a1), FUNC6(b)));

    FUNC0(FUNC20(FUNC6(a1)) == FUNC20(FUNC6(a1)));
    FUNC0(FUNC20(FUNC6(a1)) == FUNC20(FUNC6(a2)));
    FUNC0(FUNC20(FUNC6(b)) != FUNC20(FUNC6(a1)));
    FUNC8(a1);
    FUNC8(a2);
    FUNC8(b);

    FUNC0(FUNC7(FUNC18("hello42!"), FUNC19("hello%d%s", 42, "!")));
    char big[20000];
    for (int i=0; i<(int)sizeof(big); i++) big[i] = 'a';
    big[sizeof(big)-1] = 0;
    jv str = FUNC19("%s", big);
    FUNC0(FUNC21(FUNC6(str)) == sizeof(big) - 1);
    FUNC0(!FUNC24(big, FUNC23(str)));
    FUNC8(str);
  }

  /// Objects
  {
    jv o1 = FUNC14();
    o1 = FUNC16(o1, FUNC18("foo"), FUNC12(42));
    o1 = FUNC16(o1, FUNC18("bar"), FUNC12(24));
    FUNC0(FUNC13(FUNC15(FUNC6(o1), FUNC18("foo"))) == 42);
    FUNC0(FUNC13(FUNC15(FUNC6(o1), FUNC18("bar"))) == 24);

    jv o2 = FUNC16(FUNC6(o1), FUNC18("foo"), FUNC12(420));
    o2 = FUNC16(o2, FUNC18("bar"), FUNC12(240));
    FUNC0(FUNC13(FUNC15(FUNC6(o1), FUNC18("foo"))) == 42);
    FUNC0(FUNC13(FUNC15(FUNC6(o1), FUNC18("bar"))) == 24);
    FUNC0(FUNC13(FUNC15(FUNC6(o2), FUNC18("foo"))) == 420);
    FUNC8(o1);
    FUNC0(FUNC13(FUNC15(FUNC6(o2), FUNC18("bar"))) == 240);

    //jv_dump(jv_copy(o2), 0); printf("\n");
    FUNC8(o2);
  }
}