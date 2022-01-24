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
struct TYPE_5__ {int* fType; TYPE_1__* fpreg; } ;
struct TYPE_4__ {int /*<<< orphan*/  fExtended; int /*<<< orphan*/  fDouble; int /*<<< orphan*/  fSingle; } ;
typedef  TYPE_2__ FPA11 ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (struct roundingData*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct roundingData*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct roundingData*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int const) ; 
#define  typeDouble 130 
#define  typeExtended 129 
#define  typeSingle 128 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned int FUNC10(const unsigned int opcode)
{
	FPA11 *fpa11 = FUNC0();
	unsigned int Fn = FUNC7(opcode);
	struct roundingData roundData;

	roundData.mode = FUNC1(opcode);
	roundData.precision = FUNC2(opcode);
	roundData.exception = 0;

	switch (fpa11->fType[Fn]) {
	case typeSingle:
		{
			FUNC9(FUNC8(opcode), FUNC3(&roundData, fpa11->fpreg[Fn].fSingle));
		}
		break;

	case typeDouble:
		{
			FUNC9(FUNC8(opcode), FUNC4(&roundData, fpa11->fpreg[Fn].fDouble));
		}
		break;

#ifdef CONFIG_FPE_NWFPE_XP
	case typeExtended:
		{
			writeRegister(getRd(opcode), floatx80_to_int32(&roundData, fpa11->fpreg[Fn].fExtended));
		}
		break;
#endif

	default:
		return 0;
	}

	if (roundData.exception)
		FUNC5(roundData.exception);

	return 1;
}