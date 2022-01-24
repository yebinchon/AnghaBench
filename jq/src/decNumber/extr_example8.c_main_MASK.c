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
typedef  int /*<<< orphan*/  decQuad ;
typedef  int /*<<< orphan*/  decNumber ;
typedef  int /*<<< orphan*/  decContext ;

/* Variables and functions */
 int DECQUAD_String ; 
 int /*<<< orphan*/  DEC_INIT_DECQUAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

int FUNC9(int argc, char *argv[]) {
  decQuad a;                       // working decQuad
  decNumber numa, numb;            // working decNumbers
  decContext set;                  // working context
  char string[DECQUAD_String];     // number->string buffer

  if (argc<3) {                    // not enough words
    FUNC8("Please supply two numbers for power(2*a, b).\n");
    return 1;
    }
  FUNC0(&set, DEC_INIT_DECQUAD); // initialize

  FUNC5(&a, argv[1], &set);      // get a
  FUNC3(&a, &a, &a, &set);              // double a
  FUNC6(&a, &numa);                // convert to decNumber
  FUNC1(&numb, argv[2], &set);
  FUNC2(&numa, &numa, &numb, &set); // numa=numa**numb
  FUNC4(&a, &numa, &set);        // back via a Quad
  FUNC7(&a, string);               // ..

  FUNC8("power(2*%s, %s) => %s\n", argv[1], argv[2], string);
  return 0;
  }