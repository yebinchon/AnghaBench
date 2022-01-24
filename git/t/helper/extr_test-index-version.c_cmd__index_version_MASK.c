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
struct cache_header {int /*<<< orphan*/  hdr_version; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_header*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct cache_header*,int) ; 

int FUNC4(int argc, const char **argv)
{
	struct cache_header hdr;
	int version;

	FUNC0(&hdr,0,sizeof(hdr));
	if (FUNC3(0, &hdr, sizeof(hdr)) != sizeof(hdr))
		return 0;
	version = FUNC1(hdr.hdr_version);
	FUNC2("%d\n", version);
	return 0;
}