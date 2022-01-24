#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int ssid_len; int /*<<< orphan*/  ssid; } ;
struct hostapd_neighbor_entry {int /*<<< orphan*/  nr; TYPE_1__ ssid; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACSTR ; 
 int /*<<< orphan*/  b ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct hostapd_neighbor_entry *nr)
{
	const u8 *data;
	char *str;
	int len;

	FUNC3(&b, "", MACSTR, FUNC0(nr->bssid));

	str = FUNC2(&b, "", nr->ssid.ssid_len + 1);
	FUNC4(str, nr->ssid.ssid, nr->ssid.ssid_len);
	str[nr->ssid.ssid_len] = 0;
	FUNC1(&b);

	len = FUNC7(nr->nr);
	str = FUNC2(&b, "", 2 * len + 1);
	FUNC5(str, 2 * len + 1, FUNC6(nr->nr), len);
	FUNC1(&b);
}