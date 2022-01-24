#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decNumber ;
struct TYPE_6__ {int /*<<< orphan*/  digits; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ decContext ;

/* Variables and functions */
 int /*<<< orphan*/  DECNUMDIGITS ; 
 int /*<<< orphan*/  DEC_Errors ; 
 int /*<<< orphan*/  DEC_INIT_BASE ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  preserve ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signalHandler ; 

int FUNC8(int argc, char *argv[]) {
  decNumber a, b;                  // working numbers
  decContext set;                  // working context
  char string[DECNUMDIGITS+14];    // conversion buffer
  int value;                       // work variable

  if (argc<3) {                    // not enough words
    FUNC5("Please supply two numbers to add.\n");
    return 1;
    }
  FUNC0(&set, DEC_INIT_BASE);    // initialize

// [snip...
  FUNC7(SIGFPE, signalHandler);   // set up signal handler
  value=FUNC6(preserve);          // preserve and test environment
  if (value) {                     // (non-0 after longjmp)
    set.status &= DEC_Errors;      // keep only errors
    FUNC5("Signal trapped [%s].\n", FUNC1(&set));
    return 1;
    }
// ...snip]

// [change from Example 1, here]
  // leave traps enabled
  set.digits=DECNUMDIGITS;         // set precision

  FUNC3(&a, argv[1], &set);
  FUNC3(&b, argv[2], &set);

  FUNC2(&a, &a, &b, &set);            // A=A+B
  FUNC4(&a, string);

  FUNC5("%s + %s => %s\n", argv[1], argv[2], string);
  return 0;
  }