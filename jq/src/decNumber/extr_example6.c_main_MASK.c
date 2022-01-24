#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yearspack ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  startpack ;
typedef  int /*<<< orphan*/  respack ;
typedef  int /*<<< orphan*/  ratepack ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  decNumber ;
struct TYPE_9__ {int digits; scalar_t__ traps; } ;
typedef  TYPE_1__ decContext ;

/* Variables and functions */
 int /*<<< orphan*/  DEC_INIT_BASE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

int FUNC11(int argc, char *argv[]) {
  { // excerpt for User's Guide starts here--------------------------|
  decNumber one, mtwo, hundred;                   // constants
  decNumber start, rate, years;                   // parameters
  decNumber total;                                // result
  decContext set;                                 // working context

  uint8_t startpack[]={0x01, 0x00, 0x00, 0x0C};   // investment=100000
  int32_t startscale=0;
  uint8_t ratepack[]={0x06, 0x5C};                // rate=6.5%
  int32_t ratescale=1;
  uint8_t yearspack[]={0x02, 0x0C};               // years=20
  int32_t yearsscale=0;
  uint8_t respack[16];                            // result, packed
  int32_t resscale;                               // ..
  char  hexes[49];                                // for packed->hex
  int   i;                                        // counter

  if (argc<0) FUNC9("%s", argv[1]);              // noop for warning

  FUNC0(&set, DEC_INIT_BASE);         // initialize
  set.traps=0;                                    // no traps
  set.digits=25;                                  // precision 25
  FUNC3(&one,       "1", &set);     // set constants
  FUNC3(&mtwo,     "-2", &set);
  FUNC3(&hundred, "100", &set);

  FUNC8(startpack, sizeof(startpack), &startscale, &start);
  FUNC8(ratepack,  sizeof(ratepack),  &ratescale,  &rate);
  FUNC8(yearspack, sizeof(yearspack), &yearsscale, &years);

  FUNC2(&rate, &rate, &hundred, &set);  // rate=rate/100
  FUNC1(&rate, &rate, &one, &set);         // rate=rate+1
  FUNC5(&rate, &rate, &years, &set);     // rate=rate^years
  FUNC4(&total, &rate, &start, &set); // total=rate*start
  FUNC6(&total, &total, &mtwo, &set);  // two digits please

  FUNC7(respack, sizeof(respack), &resscale, &total);

  // lay out the total as sixteen hexadecimal pairs
  for (i=0; i<16; i++) {
    FUNC10(&hexes[i*3], "%02x ", respack[i]);
    }
  FUNC9("Result: %s (scale=%ld)\n", hexes, (long int)resscale);

  } //---------------------------------------------------------------|
  return 0;
  }