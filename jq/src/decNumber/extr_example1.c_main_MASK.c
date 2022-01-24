#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decNumber ;
struct TYPE_5__ {int /*<<< orphan*/  digits; scalar_t__ traps; } ;
typedef  TYPE_1__ decContext ;

/* Variables and functions */
 int /*<<< orphan*/  DECNUMDIGITS ; 
 int /*<<< orphan*/  DEC_INIT_BASE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int FUNC6(int argc, char *argv[]) {
  decNumber a, b;                  // working numbers
  decContext set;                  // working context
  char string[DECNUMDIGITS+14];    // conversion buffer

  FUNC1(0);         // warn if DECLITEND is wrong

  if (argc<3) {                    // not enough words
    FUNC5("Please supply two numbers to add.\n");
    return 1;
    }
  FUNC0(&set, DEC_INIT_BASE); // initialize
  set.traps=0;                     // no traps, thank you
  set.digits=DECNUMDIGITS;         // set precision

  FUNC3(&a, argv[1], &set);
  FUNC3(&b, argv[2], &set);

  FUNC2(&a, &a, &b, &set);            // a=a+b
  FUNC4(&a, string);

  FUNC5("%s + %s => %s\n", argv[1], argv[2], string);
  return 0;
  }