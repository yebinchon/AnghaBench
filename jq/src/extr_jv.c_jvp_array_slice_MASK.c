#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int offset; int size; } ;
typedef  TYPE_1__ jv ;

/* Variables and functions */
 int CHAR_BIT ; 
 int FUNC0 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ FUNC2 () ; 
 TYPE_1__ FUNC3 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__) ; 
 int FUNC8 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC9 (int,int*,int*) ; 

__attribute__((used)) static jv FUNC10(jv a, int start, int end) {
  FUNC1(FUNC0(a, JV_KIND_ARRAY));
  int len = FUNC8(a);
  FUNC9(len, &start, &end);
  FUNC1(0 <= start && start <= end && end <= len);

  // FIXME: maybe slice should reallocate if the slice is small enough
  if (start == end) {
    FUNC7(a);
    return FUNC2();
  }

  if (a.offset + start >= 1 << (sizeof(a.offset) * CHAR_BIT)) {
    jv r = FUNC5(end - start);
    for (int i = start; i < end; i++)
      r = FUNC3(r, FUNC4(FUNC6(a), i));
    FUNC7(a);
    return r;
  } else {
    a.offset += start;
    a.size = end - start;
    return a;
  }
}