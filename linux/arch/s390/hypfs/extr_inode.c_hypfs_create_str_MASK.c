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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int REG_FILE_MODE ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

struct dentry *FUNC8(struct dentry *dir,
				const char *name, char *string)
{
	char *buffer;
	struct dentry *dentry;

	buffer = FUNC5(FUNC7(string) + 2, GFP_KERNEL);
	if (!buffer)
		return FUNC0(-ENOMEM);
	FUNC6(buffer, "%s\n", string);
	dentry =
	    FUNC3(dir, name, buffer, S_IFREG | REG_FILE_MODE);
	if (FUNC1(dentry)) {
		FUNC4(buffer);
		return FUNC0(-ENOMEM);
	}
	FUNC2(dentry);
	return dentry;
}