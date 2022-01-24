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
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 scalar_t__ JV_KIND_ARRAY ; 
 scalar_t__ JV_KIND_NULL ; 
 scalar_t__ JV_KIND_NUMBER ; 
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 double FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(jv j, jv slice, int* pstart, int* pend) {
  // Array slices
  jv start_jv = FUNC7(FUNC2(slice), FUNC8("start"));
  jv end_jv = FUNC7(slice, FUNC8("end"));
  if (FUNC4(start_jv) == JV_KIND_NULL) {
    FUNC3(start_jv);
    start_jv = FUNC5(0);
  }
  int len;
  if (FUNC4(j) == JV_KIND_ARRAY) {
    len = FUNC1(j);
  } else if (FUNC4(j) == JV_KIND_STRING) {
    len = FUNC9(j);
  } else {
    FUNC3(j);
    return 0;
  }
  if (FUNC4(end_jv) == JV_KIND_NULL) {
    FUNC3(end_jv);
    end_jv = FUNC5(len);
  }
  if (FUNC4(start_jv) != JV_KIND_NUMBER ||
      FUNC4(end_jv) != JV_KIND_NUMBER) {
    FUNC3(start_jv);
    FUNC3(end_jv);
    return 0;
  } else {
    double dstart = FUNC6(start_jv);
    double dend = FUNC6(end_jv);
    FUNC3(start_jv);
    FUNC3(end_jv);
    if (dstart < 0) dstart += len;
    if (dend < 0) dend += len;
    if (dstart < 0) dstart = 0;
    if (dstart > len) dstart = len;

    int start = (int)dstart;
    int end = (dend > len) ? len : (int)dend;
    // Ends are exclusive but e.g. 1 < 1.5 so :1.5 should be :2 not :1
    if(end < dend) end += 1;

    if (end > len) end = len;
    if (end < start) end = start;
    FUNC0(0 <= start && start <= end && end <= len);
    *pstart = start;
    *pend = end;
    return 1;
  }
}