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
struct rerere_dir {int /*<<< orphan*/ * status; int /*<<< orphan*/  hash; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  RR_HAS_POSTIMAGE ; 
 int /*<<< orphan*/  RR_HAS_PREIMAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rerere_dir*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rerere_dir *rr_dir)
{
	struct dirent *de;
	DIR *dir = FUNC5(FUNC2("rr-cache/%s", FUNC3(rr_dir->hash)));

	if (!dir)
		return;
	while ((de = FUNC6(dir)) != NULL) {
		int variant;

		if (FUNC4(de->d_name, "postimage", &variant)) {
			FUNC1(rr_dir, variant);
			rr_dir->status[variant] |= RR_HAS_POSTIMAGE;
		} else if (FUNC4(de->d_name, "preimage", &variant)) {
			FUNC1(rr_dir, variant);
			rr_dir->status[variant] |= RR_HAS_PREIMAGE;
		}
	}
	FUNC0(dir);
}