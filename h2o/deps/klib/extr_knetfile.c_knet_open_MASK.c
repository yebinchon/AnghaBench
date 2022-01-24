#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int fd; int ctrl_fd; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ knetFile ;

/* Variables and functions */
 int /*<<< orphan*/  KNF_TYPE_LOCAL ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char const* FUNC10 (char const*,char*) ; 

knetFile *FUNC11(const char *fn, const char *mode)
{
	knetFile *fp = 0;
	if (mode[0] != 'r') {
		FUNC1(stderr, "[kftp_open] only mode \"r\" is supported.\n");
		return 0;
	}
	if (FUNC10(fn, "ftp://") == fn) {
		fp = FUNC4(fn, mode);
		if (fp == 0) return 0;
		if (FUNC2(fp) == -1) {
			FUNC7(fp);
			return 0;
		}
		FUNC3(fp);
	} else if (FUNC10(fn, "http://") == fn) {
		fp = FUNC6(fn, mode);
		if (fp == 0) return 0;
		FUNC5(fp);
	} else { // local file
#ifdef _WIN32
		/* In windows, O_BINARY is necessary. In Linux/Mac, O_BINARY may
		 * be undefined on some systems, although it is defined on my
		 * Mac and the Linux I have tested on. */
		int fd = open(fn, O_RDONLY | O_BINARY);
#else		
		int fd = FUNC8(fn, O_RDONLY);
#endif
		if (fd == -1) {
			FUNC9("open");
			return 0;
		}
		fp = (knetFile*)FUNC0(1, sizeof(knetFile));
		fp->type = KNF_TYPE_LOCAL;
		fp->fd = fd;
		fp->ctrl_fd = -1;
	}
	if (fp && fp->fd == -1) {
		FUNC7(fp);
		return 0;
	}
	return fp;
}