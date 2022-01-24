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
typedef  int /*<<< orphan*/  yyscan_t ;

/* Variables and functions */
 int IN_BRACE ; 
 int IN_BRACKET ; 
 int IN_PAREN ; 
 int IN_QQINTERP ; 
#define  QQSTRING_INTERP_START 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(int c, int currstate, yyscan_t yyscanner) {
  int state = 0;
  switch (c) {
  case '(': state = IN_PAREN; break;
  case '[': state = IN_BRACKET; break;
  case '{': state = IN_BRACE; break;
  case QQSTRING_INTERP_START: state = IN_QQINTERP; break;
  }
  FUNC0(state);
  FUNC1(state, yyscanner);
  return c;
}