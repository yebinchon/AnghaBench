#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t SSID_len; int /*<<< orphan*/  SSID; } ;
typedef  TYPE_1__ wlc_ssid_t ;
typedef  int wlc_param ;
typedef  int /*<<< orphan*/  ssid ;

/* Variables and functions */
 int GET ; 
 int PARAM_MODE ; 
 int SET ; 
 int /*<<< orphan*/  WLC_GET_SSID ; 
 int /*<<< orphan*/  WLC_SET_SSID ; 
 int /*<<< orphan*/  interface ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ vif ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,TYPE_1__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(wlc_param param, void *data, void *value)
{
	int ret = -1, ret2 = -1;
	char *dest = (char *) value;
	wlc_ssid_t ssid;
	
	if ((param & PARAM_MODE) == GET) {
		ret = FUNC3(interface, "ssid", vif, &ssid, sizeof(ssid));

		if (ret)
			/* if we can't get the ssid through the bssiovar, try WLC_GET_SSID */
			ret = FUNC5(interface, WLC_GET_SSID, &ssid, sizeof(ssid));
		
		if (!ret) {
			FUNC0(dest, ssid.SSID, ssid.SSID_len);
			dest[ssid.SSID_len] = 0;
		}
	} else if ((param & PARAM_MODE) == SET) {
		FUNC2(ssid.SSID, value, 32);
		ssid.SSID_len = FUNC1(value);
		
		if (ssid.SSID_len > 32)
			ssid.SSID_len = 32;
		
		if (vif == 0) {
			/* for the main interface, also try the WLC_SET_SSID call */
			ret2 = FUNC5(interface, WLC_SET_SSID, &ssid, sizeof(ssid));
		}
		
		ret = FUNC4(interface, "ssid", vif, &ssid, sizeof(ssid));
		ret = (!ret2 ? 0 : ret);
	}
	
	return ret;
}