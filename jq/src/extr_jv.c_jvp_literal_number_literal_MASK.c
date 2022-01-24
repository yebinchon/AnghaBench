#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char const* literal_data; } ;
typedef  TYPE_1__ jvp_literal_number ;
typedef  int /*<<< orphan*/  jv ;
struct TYPE_10__ {int digits; } ;
typedef  TYPE_2__ decNumber ;

/* Variables and functions */
 char const* DBL_MAX_STR ; 
 char const* DBL_MIN_STR ; 
 int /*<<< orphan*/  JVP_FLAGS_NUMBER_LITERAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*) ; 
 char const* FUNC6 (int) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char* FUNC9(jv n) {
  FUNC1(FUNC0(n, JVP_FLAGS_NUMBER_LITERAL));
  decNumber *pdec = FUNC7(n);
  jvp_literal_number* plit = FUNC8(n);

  if (FUNC3(pdec)) {
    return "null";
  }

  if (FUNC2(pdec)) {
    // For backward compatibiltiy.
    if (FUNC4(pdec)) {
      return DBL_MIN_STR;
    } else {
      return DBL_MAX_STR;
    }
  }

  if (plit->literal_data == NULL) {
    int len = FUNC7(n)->digits + 14;
    plit->literal_data = FUNC6(len);

    // Preserve the actual precision as we have parsed it
    // don't do decNumberTrim(pdec);
    
    FUNC5(pdec, plit->literal_data);
  }

  return plit->literal_data;
}