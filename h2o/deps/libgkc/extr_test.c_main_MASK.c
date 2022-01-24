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
struct gkc_summary {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int FUNC0 (double*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,long) ; 
 struct gkc_summary* FUNC4 (struct gkc_summary*,struct gkc_summary*) ; 
 int /*<<< orphan*/  FUNC5 (struct gkc_summary*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gkc_summary*) ; 
 int /*<<< orphan*/  FUNC7 (struct gkc_summary*) ; 
 struct gkc_summary* FUNC8 (double) ; 
 int /*<<< orphan*/  FUNC9 (struct gkc_summary*) ; 
 int /*<<< orphan*/  FUNC10 (struct gkc_summary*,double) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ tofile ; 

int FUNC14(void)
{
#define ARRAY_SIZE(x) (sizeof(x)/sizeof(x[0]))
	unsigned int i;
#if 0
	double input[] = {
		3658, 3673, 3693, 3715, 3723, 3724, 3724, 3690, 3695, 3689, 3695, 3700,
		3690, 3699, 3699, 3701, 3704, 3704, 3714, 3707, 3698, 3701, 3697, 3697,
		3712, 3713, 3714, 3715, 3717, 3712, 3712, 3717, 3728, 3728, 3744, 3751,
		3764, 3751, 3798, 3802, 3800, 3824, 3810, 3824, 3811, 3802, 3811, 3801,
		3791, 3796, 3803, 3817, 3819, 3818, 3815, 3804, 3796, 3784, 3783, 3784,
		3774, 3776, 3776, 3764, 3763, 3806, 3819, 3835, 3825, 3786, 3795, 3795,
		3776, 3760, 3789, 3786, 3771, 3778, 3782, 3776, 3781, 3784, 3801, 3810,
		3815, 3792, 3764, 3770, 3746, 3741, 3746, 3756, 3755, 3775, 3776, 3773,
		3777, 3801, 3804, 3807
	};
#else
	double input[] = { 12, 6, 10, 1 };
#endif
	FILE *out;
	struct gkc_summary *summary;
	struct gkc_summary *s1, *s2, *snew;

	summary = FUNC8(0.01);
	FUNC10(summary, 0.1);
	goto test_combine;
	summary = FUNC8(0.01);

#if 0
	for (i = 0; i < ARRAY_SIZE(input); i++) {
		gkc_insert_value(&summary, input[i]);
	}
	gkc_print_summary(&summary);
	print_query(&summary, 0);
	print_query(&summary, .25);
	print_query(&summary, .5);
	print_query(&summary, .75);
	print_query(&summary, 1);
	return 0;
#else
	(void)input;
#endif

#define tofile 0
	if (tofile) {
		out = FUNC2("data", "w+");
	}
	FUNC12(FUNC13(NULL));
	for (i = 0; i < 10 * 1000 * 1000; i++) {
		long r = FUNC11() % 10000;
		FUNC5(summary, r);
		if (tofile) {
			FUNC3(out, "%ld\n", r);
		}
	}
	if (tofile) {
		FUNC1(out);
	}
	FUNC6(summary);
	FUNC10(summary, .02);
	FUNC10(summary, .1);
	FUNC10(summary, .25);
	FUNC10(summary, .5);
	FUNC10(summary, .75);
	FUNC10(summary, .82);
	FUNC10(summary, .88);
	FUNC10(summary, .86);
	FUNC10(summary, .99);

	FUNC7(summary);

	FUNC9(summary);

test_combine:
	s1 = FUNC8(0.01);
	s2 = FUNC8(0.01);

	for (i = 0; i < 1 * 10 * 1000; i++) {
		long r = FUNC11() % 10000;
		FUNC5(s1, r);
	}
#if 0
	for (i = 0; i < 1 * 1 * 1000; i++) {
		gkc_insert_value(s2, 111);
	}
#endif
	snew = FUNC4(s1, s2);
	FUNC9(s1);
	FUNC9(s2);

	FUNC6(snew);
	FUNC10(snew, .02);
	FUNC10(snew, .1);
	FUNC10(snew, .25);
	FUNC10(snew, .5);
	FUNC10(snew, .75);
	FUNC10(snew, .82);
	FUNC10(snew, .88);
	FUNC10(snew, .86);
	FUNC10(snew, .99);

	FUNC7(snew);

	FUNC9(snew);

	return 0;
}