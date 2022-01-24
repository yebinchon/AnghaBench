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
struct TYPE_2__ {scalar_t__ dirty; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 TYPE_1__ E ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,int) ; 

int FUNC8(void) {
    int len;
    char *buf = FUNC1(&len);
    int fd = FUNC5(E.filename,O_RDWR|O_CREAT,0644);
    if (fd == -1) goto writeerr;

    /* Use truncate + a single write(2) call in order to make saving
     * a bit safer, under the limits of what we can do in a small editor. */
    if (FUNC4(fd,len) == -1) goto writeerr;
    if (FUNC7(fd,buf,len) != len) goto writeerr;

    FUNC0(fd);
    FUNC3(buf);
    E.dirty = 0;
    FUNC2("%d bytes written on disk", len);
    return 0;

writeerr:
    FUNC3(buf);
    if (fd != -1) FUNC0(fd);
    FUNC2("Can't save! I/O error: %s",FUNC6(errno));
    return 1;
}