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
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC12(const char *current_hex)
{
	struct dirent *de;
	DIR *dir = FUNC5(FUNC3());

	if (!dir)
		return FUNC2(FUNC0("unable to open git dir: %s"), FUNC3());

	while ((de = FUNC6(dir)) != NULL) {
		const char *sha1_hex;
		const char *shared_index_path;
		if (!FUNC8(de->d_name, "sharedindex.", &sha1_hex))
			continue;
		if (!FUNC9(sha1_hex, current_hex))
			continue;
		shared_index_path = FUNC4("%s", de->d_name);
		if (FUNC7(shared_index_path) > 0 &&
		    FUNC10(shared_index_path))
			FUNC11(FUNC0("unable to unlink: %s"), shared_index_path);
	}
	FUNC1(dir);

	return 0;
}