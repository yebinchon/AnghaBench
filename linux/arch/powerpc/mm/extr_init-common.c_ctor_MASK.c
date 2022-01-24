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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_PGTABLE_INDEX_SIZE ; 
 void FUNC1 (void*) ; 
 void FUNC2 (void*) ; 
 void FUNC3 (void*) ; 
 void FUNC4 (void*) ; 
 void FUNC5 (void*) ; 
 void FUNC6 (void*) ; 
 void FUNC7 (void*) ; 
 void FUNC8 (void*) ; 
 void FUNC9 (void*) ; 
 void FUNC10 (void*) ; 
 void FUNC11 (void*) ; 
 void FUNC12 (void*) ; 
 void FUNC13 (void*) ; 
 void FUNC14 (void*) ; 
 void FUNC15 (void*) ; 
 void FUNC16 (void*) ; 

__attribute__((used)) static inline void (*FUNC17(int shift))(void *)
{
	FUNC0(MAX_PGTABLE_INDEX_SIZE != 15);

	switch (shift) {
	case 0: return ctor_0;
	case 1: return ctor_1;
	case 2: return ctor_2;
	case 3: return ctor_3;
	case 4: return ctor_4;
	case 5: return ctor_5;
	case 6: return ctor_6;
	case 7: return ctor_7;
	case 8: return ctor_8;
	case 9: return ctor_9;
	case 10: return ctor_10;
	case 11: return ctor_11;
	case 12: return ctor_12;
	case 13: return ctor_13;
	case 14: return ctor_14;
	case 15: return ctor_15;
	}
	return NULL;
}