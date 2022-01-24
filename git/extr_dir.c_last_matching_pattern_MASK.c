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
struct path_pattern {int dummy; } ;
struct index_state {int dummy; } ;
struct dir_struct {struct path_pattern* pattern; } ;

/* Variables and functions */
 struct path_pattern* FUNC0 (struct dir_struct*,struct index_state*,char const*,int,char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct dir_struct*,struct index_state*,char const*,int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char) ; 

struct path_pattern *FUNC4(struct dir_struct *dir,
				      struct index_state *istate,
				      const char *pathname,
				      int *dtype_p)
{
	int pathlen = FUNC2(pathname);
	const char *basename = FUNC3(pathname, '/');
	basename = (basename) ? basename+1 : pathname;

	FUNC1(dir, istate, pathname, basename-pathname);

	if (dir->pattern)
		return dir->pattern;

	return FUNC0(dir, istate, pathname, pathlen,
			basename, dtype_p);
}