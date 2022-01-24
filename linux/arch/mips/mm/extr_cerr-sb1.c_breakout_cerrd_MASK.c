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

/* Variables and functions */
 unsigned int CP0_CERRD_CAUSES ; 
#define  CP0_CERRD_COHERENCY 132 
 unsigned int CP0_CERRD_DATA_DBE ; 
 unsigned int CP0_CERRD_DATA_SBE ; 
#define  CP0_CERRD_DUPTAG 131 
 unsigned int CP0_CERRD_EXTERNAL ; 
#define  CP0_CERRD_FILLWB 130 
#define  CP0_CERRD_LOAD 129 
 unsigned int CP0_CERRD_MULTIPLE ; 
#define  CP0_CERRD_STORE 128 
 unsigned int CP0_CERRD_TAG_ADDRESS ; 
 unsigned int CP0_CERRD_TAG_STATE ; 
 unsigned int CP0_CERRD_TYPES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static inline void FUNC1(unsigned int val)
{
	switch (val & CP0_CERRD_CAUSES) {
	case CP0_CERRD_LOAD:
		FUNC0(" load,");
		break;
	case CP0_CERRD_STORE:
		FUNC0(" store,");
		break;
	case CP0_CERRD_FILLWB:
		FUNC0(" fill/wb,");
		break;
	case CP0_CERRD_COHERENCY:
		FUNC0(" coherency,");
		break;
	case CP0_CERRD_DUPTAG:
		FUNC0(" duptags,");
		break;
	default:
		FUNC0(" NO CAUSE,");
		break;
	}
	if (!(val & CP0_CERRD_TYPES))
		FUNC0(" NO TYPE");
	else {
		if (val & CP0_CERRD_MULTIPLE)
			FUNC0(" multi-err");
		if (val & CP0_CERRD_TAG_STATE)
			FUNC0(" tag-state");
		if (val & CP0_CERRD_TAG_ADDRESS)
			FUNC0(" tag-address");
		if (val & CP0_CERRD_DATA_SBE)
			FUNC0(" data-SBE");
		if (val & CP0_CERRD_DATA_DBE)
			FUNC0(" data-DBE");
		if (val & CP0_CERRD_EXTERNAL)
			FUNC0(" external");
	}
	FUNC0("\n");
}