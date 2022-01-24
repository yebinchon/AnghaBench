#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* bytes; } ;
typedef  TYPE_1__ decimal64 ;
typedef  int /*<<< orphan*/  decNumber ;
typedef  int /*<<< orphan*/  decContext ;

/* Variables and functions */
 int DECIMAL64_String ; 
 int /*<<< orphan*/  DEC_INIT_DECIMAL64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

int FUNC6(int argc, char *argv[]) {
  decimal64 a;                     // working decimal64 number
  decNumber d;                     // working number
  decContext set;                  // working context
  char string[DECIMAL64_String];   // number->string buffer
  char hexes[25];                  // decimal64->hex buffer
  int i;                           // counter

  if (argc<2) {                    // not enough words
    FUNC4("Please supply a number.\n");
    return 1;
    }
  FUNC0(&set, DEC_INIT_DECIMAL64); // initialize

  FUNC2(&a, argv[1], &set);
  // lay out the decimal64 as eight hexadecimal pairs
  for (i=0; i<8; i++) {
    FUNC5(&hexes[i*3], "%02x ", a.bytes[i]);
    }
  FUNC3(&a, &d);
  FUNC1(&d, string);
  FUNC4("%s => %s=> %s\n", argv[1], hexes, string);
  return 0;
  }