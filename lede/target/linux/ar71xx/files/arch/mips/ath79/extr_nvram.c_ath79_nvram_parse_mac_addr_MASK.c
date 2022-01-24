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
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 char* FUNC0 (char const*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,unsigned int) ; 
 int FUNC2 (char*,char*,char*,char*,char*,char*,char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (unsigned int) ; 

int FUNC6(const char *nvram, unsigned nvram_len,
			       const char *name, char *mac)
{
	char *buf;
	char *mac_str;
	int ret;
	int t;

	buf = FUNC5(nvram_len);
	if (!buf)
		return -ENOMEM;

	FUNC1(buf, nvram, nvram_len);
	buf[nvram_len - 1] = '\0';

	mac_str = FUNC0(name, buf, nvram_len);
	if (!mac_str) {
		ret = -EINVAL;
		goto free;
	}

	if (FUNC3(mac_str) == 19 && mac_str[0] == '"' && mac_str[18] == '"') {
		mac_str[18] = 0;
		mac_str++;
	}

	t = FUNC2(mac_str, "%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx",
		   &mac[0], &mac[1], &mac[2], &mac[3], &mac[4], &mac[5]);

	if (t != ETH_ALEN)
		t = FUNC2(mac_str, "%02hhx-%02hhx-%02hhx-%02hhx-%02hhx-%02hhx",
			&mac[0], &mac[1], &mac[2], &mac[3], &mac[4], &mac[5]);

	if (t != ETH_ALEN) {
		ret = -EINVAL;
		goto free;
	}

	ret = 0;

free:
	FUNC4(buf);
	return ret;
}