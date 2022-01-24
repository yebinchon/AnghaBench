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
typedef  int /*<<< orphan*/ * _bgzf_file_t ;
struct TYPE_5__ {int /*<<< orphan*/ * fp; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ BGZF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 TYPE_1__* FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char) ; 

BGZF *FUNC6(const char *path, const char *mode)
{
	BGZF *fp = 0;
	if (FUNC5(mode, 'r') || FUNC5(mode, 'R')) {
		_bgzf_file_t fpr;
		if ((fpr = FUNC0(path, "r")) == 0) return 0;
		fp = FUNC1();
		fp->fp = fpr;
	} else if (FUNC5(mode, 'w') || FUNC5(mode, 'W')) {
		FILE *fpw;
		if ((fpw = FUNC3(path, "w")) == 0) return 0;
		fp = FUNC2(FUNC4(mode));
		fp->fp = fpw;
	}
	return fp;
}