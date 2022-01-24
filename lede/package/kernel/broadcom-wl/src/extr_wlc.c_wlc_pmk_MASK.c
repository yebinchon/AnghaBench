#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ key_len; int /*<<< orphan*/  flags; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ wsec_pmk_t ;
typedef  int wlc_param ;
typedef  int /*<<< orphan*/  pmk ;

/* Variables and functions */
 int PARAM_MODE ; 
 int SET ; 
 int /*<<< orphan*/  WLC_SET_WSEC_PMK ; 
 scalar_t__ WSEC_MAX_PSK_LEN ; 
 int /*<<< orphan*/  WSEC_PASSPHRASE ; 
 int /*<<< orphan*/  interface ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3(wlc_param param, void *data, void *value)
{
	int ret = -1;
	char *str = (char *) value;
	wsec_pmk_t pmk;
	
	/* driver doesn't support GET */

	if ((param & PARAM_MODE) == SET) {
		FUNC1(pmk.key, str, WSEC_MAX_PSK_LEN);
		pmk.key_len = FUNC0(str);

		if (pmk.key_len > WSEC_MAX_PSK_LEN)
			pmk.key_len = WSEC_MAX_PSK_LEN;

		pmk.flags = WSEC_PASSPHRASE;

		ret = FUNC2(interface, WLC_SET_WSEC_PMK, &pmk, sizeof(pmk));
	}
	
	return ret;
}