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
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  JV_KIND_ARRAY 132 
#define  JV_KIND_INVALID 131 
#define  JV_KIND_NUMBER 130 
#define  JV_KIND_OBJECT 129 
#define  JV_KIND_STRING 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(jv j) {
  switch(FUNC0(j)) {
    case JV_KIND_ARRAY:
      FUNC1(j);
      break;
    case JV_KIND_STRING:
      FUNC5(j);
      break;
    case JV_KIND_OBJECT:
      FUNC4(j);
      break;
    case JV_KIND_INVALID:
      FUNC2(j);
      break;
    case JV_KIND_NUMBER:
      FUNC3(j);
      break;
  }
}