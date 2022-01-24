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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int FILEIO_BUFSIZE ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 int FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(int ifd, int ofd, bool close_fd_when_done)
{
	int error = 0;
	char buffer[FILEIO_BUFSIZE];
	ssize_t len = 0;

	while (!error && (len = FUNC2(ifd, buffer, sizeof(buffer))) > 0)
		/* p_write() does not have the same semantics as write().  It loops
		 * internally and will return 0 when it has completed writing.
		 */
		error = FUNC3(ofd, buffer, len);

	if (len < 0) {
		FUNC0(GIT_ERROR_OS, "read error while copying file");
		error = (int)len;
	}

	if (error < 0)
		FUNC0(GIT_ERROR_OS, "write error while copying file");

	if (close_fd_when_done) {
		FUNC1(ifd);
		FUNC1(ofd);
	}

	return error;
}