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
typedef  int uInt ;
typedef  int /*<<< orphan*/  decFloat ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int) ; 
 int ECONMASK ; 
 int ECONNANMASK ; 

uInt FUNC6(const decFloat *df) {
  if (FUNC4(df)) {
    if (FUNC3(df)) {
      if (FUNC5(df, 0)&ECONMASK) return 0;  // exponent continuation
      if (!FUNC2(df)) return 0;         // coefficient continuation
      return 1;
      }
    // is a NaN
    if (FUNC5(df, 0)&ECONNANMASK) return 0; // exponent continuation
    if (FUNC2(df)) return 1;            // coefficient continuation
    // drop through to check payload
    }
  { // declare block
  #if DOUBLE
    uInt sourhi=DFWORD(df, 0);
    uInt sourlo=DFWORD(df, 1);
    if (CANONDPDOFF(sourhi, 8)
     && CANONDPDTWO(sourhi, sourlo, 30)
     && CANONDPDOFF(sourlo, 20)
     && CANONDPDOFF(sourlo, 10)
     && CANONDPDOFF(sourlo, 0)) return 1;
  #elif QUAD
    uInt sourhi=DFWORD(df, 0);
    uInt sourmh=DFWORD(df, 1);
    uInt sourml=DFWORD(df, 2);
    uInt sourlo=DFWORD(df, 3);
    if (CANONDPDOFF(sourhi, 4)
     && CANONDPDTWO(sourhi, sourmh, 26)
     && CANONDPDOFF(sourmh, 16)
     && CANONDPDOFF(sourmh, 6)
     && CANONDPDTWO(sourmh, sourml, 28)
     && CANONDPDOFF(sourml, 18)
     && CANONDPDOFF(sourml, 8)
     && CANONDPDTWO(sourml, sourlo, 30)
     && CANONDPDOFF(sourlo, 20)
     && CANONDPDOFF(sourlo, 10)
     && CANONDPDOFF(sourlo, 0)) return 1;
  #endif
  } // block
  return 0;    // a declet is non-canonical
  }