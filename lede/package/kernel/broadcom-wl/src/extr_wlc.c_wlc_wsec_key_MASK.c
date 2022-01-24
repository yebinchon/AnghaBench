#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wsec_key ;
typedef  int wlc_param ;
struct TYPE_4__ {int len; unsigned char* data; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ wl_wsec_key_t ;

/* Variables and functions */
 int PARAM_MODE ; 
 int SET ; 
 int /*<<< orphan*/  WL_PRIMARY_KEY ; 
 int /*<<< orphan*/  interface ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*) ; 
 void* FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*,char*,int) ; 
 scalar_t__ FUNC4 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vif ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(wlc_param param, void *null, void *value)
{
	wl_wsec_key_t wsec_key;
	unsigned char *index = value;
	unsigned char *key;
	unsigned char *data;
	unsigned char hex[3];
	
	if ((param & PARAM_MODE) != SET)
		return 0;

	FUNC0(&wsec_key, 0, sizeof(wsec_key));
	if (index[0] == '=') {
		wsec_key.flags = WL_PRIMARY_KEY;
		index++;
	}
	
	if ((index[0] < '1') || (index[0] > '4') || (index[1] != ','))
		return -1;
	
	key = index + 2;
	if (FUNC3(key, "d:", 2) == 0) { /* delete key */
	} else if (FUNC3(key, "s:", 2) == 0) { /* ascii key */
		key += 2;
		wsec_key.len = FUNC2(key);

		if ((wsec_key.len != 5) && (wsec_key.len != 13))
			return -1;
		
		FUNC1(wsec_key.data, key);
	} else { /* hex key */
		wsec_key.len = FUNC2(key);
		if ((wsec_key.len != 10) && (wsec_key.len != 26))
			return -1;
		
		wsec_key.len /= 2;
		data = wsec_key.data;
		hex[2] = 0;
		do {
			hex[0] = *(key++);
			hex[1] = *(key++);
			*(data++) = (unsigned char) FUNC4(hex, NULL, 16);
		} while (*key != 0);
	}

	return FUNC5(interface, "wsec_key", vif, &wsec_key, sizeof(wsec_key));
}