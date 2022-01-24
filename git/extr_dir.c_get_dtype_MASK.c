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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct index_state {int dummy; } ;
struct dirent {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dirent*) ; 
 int DT_DIR ; 
 int DT_LNK ; 
 int DT_REG ; 
 int DT_UNKNOWN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct index_state*,char const*,int) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 

__attribute__((used)) static int FUNC6(struct dirent *de, struct index_state *istate,
		     const char *path, int len)
{
	int dtype = de ? FUNC0(de) : DT_UNKNOWN;
	struct stat st;

	if (dtype != DT_UNKNOWN)
		return dtype;
	dtype = FUNC4(istate, path, len);
	if (dtype != DT_UNKNOWN)
		return dtype;
	if (FUNC5(path, &st))
		return dtype;
	if (FUNC3(st.st_mode))
		return DT_REG;
	if (FUNC1(st.st_mode))
		return DT_DIR;
	if (FUNC2(st.st_mode))
		return DT_LNK;
	return dtype;
}