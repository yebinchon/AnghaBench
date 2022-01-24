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
typedef  int /*<<< orphan*/  decContext ;

/* Variables and functions */
 int DECQUAD_String ; 
 int /*<<< orphan*/  DEC_INIT_DECQUAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int FUNC6(int argc, char *argv[]) {
  decQuad a, b;                    // working decQuads
  decContext set;                  // working context
  char string[DECQUAD_String];     // number->string buffer

  FUNC1(0);         // warn if DECLITEND is wrong

  if (argc<3) {                    // not enough words
    FUNC5("Please supply two numbers to add.\n");
    return 1;
    }
  FUNC0(&set, DEC_INIT_DECQUAD); // initialize

  FUNC3(&a, argv[1], &set);
  FUNC3(&b, argv[2], &set);
  FUNC2(&a, &a, &b, &set);    // a=a+b
  FUNC4(&a, string);

  FUNC5("%s + %s => %s\n", argv[1], argv[2], string);
  return 0;
  }