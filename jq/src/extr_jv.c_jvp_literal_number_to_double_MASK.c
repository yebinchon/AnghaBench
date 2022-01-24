#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ decNumberDoublePrecision ;
typedef  int /*<<< orphan*/  decNumber ;

/* Variables and functions */
 scalar_t__ BIN64_DEC_PRECISION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ DEC_NUMBER_STRING_GUARD ; 
 int /*<<< orphan*/  JVP_FLAGS_NUMBER_LITERAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 double FUNC6 (int /*<<< orphan*/ ,char*,char**) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static double FUNC8(jv j) {
  FUNC2(FUNC1(j, JVP_FLAGS_NUMBER_LITERAL));

  decNumber *p_dec_number = FUNC5(j);
  decNumberDoublePrecision dec_double;
  char literal[BIN64_DEC_PRECISION + DEC_NUMBER_STRING_GUARD + 1]; 

  // reduce the number to the shortest possible form
  // while also making sure than no more than BIN64_DEC_PRECISION 
  // digits are used (dec_context_to_double)
  FUNC3(&dec_double.number, p_dec_number, FUNC0());

  FUNC4(&dec_double.number, literal);

  char *end;
  return FUNC6(FUNC7(), literal, &end);
}