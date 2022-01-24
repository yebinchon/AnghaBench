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
struct atm_qos {int /*<<< orphan*/  txtp; } ;

/* Variables and functions */
 int CBRICG_FRAC_BITS ; 
 int CBRICG_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const struct atm_qos *qos)
{
	int rounddown = 0;	/* 1 = Round PCR down, i.e. round ICG _up_ */
	int x, icg, pcr = FUNC1(&qos->txtp);
	if (pcr == 0)		/* Use maximum bandwidth */
		return 0;
	if (pcr < 0) {
		rounddown = 1;
		pcr = -pcr;
	}
	x = pcr * 27;
	icg = (3125 << (9 + CBRICG_FRAC_BITS)) - (x << CBRICG_FRAC_BITS);
	if (rounddown)
		icg += x - 1;
	icg /= x;
	if (icg > CBRICG_MAX)
		icg = CBRICG_MAX;
	FUNC0("pcr_to_cbricg: pcr=%d rounddown=%c icg=%d\n",
	    pcr, rounddown ? 'Y' : 'N', icg);
	return icg;
}