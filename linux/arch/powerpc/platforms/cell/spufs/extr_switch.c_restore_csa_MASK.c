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
struct spu_state {int dummy; } ;
struct spu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC1 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC2 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC4 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC5 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC6 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC7 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC8 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC9 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC10 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC11 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC12 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC13 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC14 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC15 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC16 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC17 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC18 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC19 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC20 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC21 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC22 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC23 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC24 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC25 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC26 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC27 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC28 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC29 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC30 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC31 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC32 (struct spu*) ; 
 int /*<<< orphan*/  FUNC33 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC34 (struct spu_state*,struct spu*) ; 
 int /*<<< orphan*/  FUNC35 (struct spu_state*,struct spu*) ; 

__attribute__((used)) static void FUNC36(struct spu_state *next, struct spu *spu)
{
	/*
	 * Combine steps 41-76 of SPU context restore sequence, which
	 * restore regions of the privileged & problem state areas.
	 */

	FUNC26(next, spu);	/* Step 41. */
	FUNC28(next, spu);	/* Step 42. */
	FUNC29(next, spu);	/* Step 43. */
	FUNC10(next, spu);	        /* Step 44. */
	FUNC35(next, spu);	        /* Step 45. */
	FUNC33(next, spu);	                /* Step 46. */
	FUNC34(next, spu);	/* Step 47. */
	FUNC4(next, spu);	        /* Step 48. */
	FUNC2(next, spu);	        /* Step 49. */
	FUNC15(next, spu);	        /* Step 50. */
	FUNC20(next, spu);	/* Step 51. */
	FUNC21(next, spu);	/* Step 52. */
	FUNC14(next, spu);	        /* Step 53. */
	FUNC13(next, spu);	        /* Step 54. */
	FUNC12(next, spu);	        /* Step 55. */
	FUNC17(next, spu);	/* Step 56. */
	FUNC31(next, spu);	        /* Step 57. */
	FUNC9(next, spu);	/* Step 58. */
	FUNC7(next, spu);	        /* Step 59. */
	FUNC8(next, spu);	        /* Step 60. */
	FUNC23(next, spu);	        /* Step 61. */
	FUNC22(next, spu);	        /* Step 62. */
	FUNC19(next, spu);	        /* Step 63. */
	FUNC25(next, spu);	        /* Step 64. */
	FUNC24(next, spu);	        /* Step 65. */
	FUNC0(next, spu);	        /* Step 66. */
	FUNC1(next, spu);	/* Step 67. */
	FUNC32(spu);		/* Modified Step 68. */
	FUNC16(next, spu);	        /* Step 69. */
	FUNC30(next, spu);		/* NEW      */
	FUNC18(next, spu);	/* Step 70. */
	FUNC27(next, spu);	        /* Step 71. */
	FUNC11(next, spu);	        /* Step 72. */
	FUNC3(next, spu);	        /* Step 73. */
	FUNC6(next, spu);	        /* Step 74. */
	FUNC5(next, spu);	        /* Step 75. */
}