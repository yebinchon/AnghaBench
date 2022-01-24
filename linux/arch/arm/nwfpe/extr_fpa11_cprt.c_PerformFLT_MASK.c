#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct roundingData {scalar_t__ exception; int /*<<< orphan*/  precision; int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {TYPE_1__* fpreg; int /*<<< orphan*/ * fType; } ;
struct TYPE_4__ {int /*<<< orphan*/  fExtended; int /*<<< orphan*/  fDouble; int /*<<< orphan*/  fSingle; } ;
typedef  TYPE_2__ FPA11 ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 unsigned int const MASK_ROUNDING_PRECISION ; 
#define  ROUND_DOUBLE 130 
#define  ROUND_EXTENDED 129 
#define  ROUND_SINGLE 128 
 int /*<<< orphan*/  FUNC1 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 size_t FUNC4 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC6 (struct roundingData*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  typeDouble ; 
 int /*<<< orphan*/  typeExtended ; 
 int /*<<< orphan*/  typeSingle ; 

unsigned int FUNC10(const unsigned int opcode)
{
	FPA11 *fpa11 = FUNC0();
	struct roundingData roundData;

	roundData.mode = FUNC1(opcode);
	roundData.precision = FUNC2(opcode);
	roundData.exception = 0;

	switch (opcode & MASK_ROUNDING_PRECISION) {
	case ROUND_SINGLE:
		{
			fpa11->fType[FUNC4(opcode)] = typeSingle;
			fpa11->fpreg[FUNC4(opcode)].fSingle = FUNC6(&roundData, FUNC9(FUNC5(opcode)));
		}
		break;

	case ROUND_DOUBLE:
		{
			fpa11->fType[FUNC4(opcode)] = typeDouble;
			fpa11->fpreg[FUNC4(opcode)].fDouble = FUNC7(FUNC9(FUNC5(opcode)));
		}
		break;

#ifdef CONFIG_FPE_NWFPE_XP
	case ROUND_EXTENDED:
		{
			fpa11->fType[getFn(opcode)] = typeExtended;
			fpa11->fpreg[getFn(opcode)].fExtended = int32_to_floatx80(readRegister(getRd(opcode)));
		}
		break;
#endif

	default:
		return 0;
	}

	if (roundData.exception)
		FUNC3(roundData.exception);

	return 1;
}