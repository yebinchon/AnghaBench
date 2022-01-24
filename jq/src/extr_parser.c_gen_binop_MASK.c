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
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  EQ 131 
#define  GREATEREQ 130 
#define  LESSEQ 129 
#define  NEQ 128 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static block FUNC6(block a, block b, int op) {
  block folded = FUNC3(a, b, op);
  if (!FUNC2(folded))
    return folded;

  const char* funcname = 0;
  switch (op) {
  case '+': funcname = "_plus"; break;
  case '-': funcname = "_minus"; break;
  case '*': funcname = "_multiply"; break;
  case '/': funcname = "_divide"; break;
  case '%': funcname = "_mod"; break;
  case EQ: funcname = "_equal"; break;
  case NEQ: funcname = "_notequal"; break;
  case '<': funcname = "_less"; break;
  case '>': funcname = "_greater"; break;
  case LESSEQ: funcname = "_lesseq"; break;
  case GREATEREQ: funcname = "_greatereq"; break;
  }
  FUNC1(funcname);

  return FUNC4(funcname, FUNC0(FUNC5(a), FUNC5(b)));
}