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
struct log {int last; int first; int stored; int /*<<< orphan*/  path; int /*<<< orphan*/  end; int /*<<< orphan*/  id; } ;
typedef  struct log gzlog ;

/* Variables and functions */
 int /*<<< orphan*/  APPEND_OP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOGID ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int TRIGGER ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct log*) ; 
 scalar_t__ FUNC3 (struct log*,void*,size_t) ; 
 scalar_t__ FUNC4 (struct log*) ; 
 scalar_t__ FUNC5 (struct log*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct log*) ; 
 int /*<<< orphan*/  FUNC7 (struct log*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int,void*,size_t) ; 

int FUNC12(gzlog *logd, void *data, size_t len)
{
    int fd, ret;
    struct log *log = logd;

    /* check arguments */
    if (log == NULL || FUNC9(log->id, LOGID))
        return -3;
    if (data == NULL || len <= 0)
        return 0;

    /* see if we lost the lock -- if so get it again and reload the extra
       field information (it probably changed), recover last operation if
       necessary */
    if (FUNC4(log) && FUNC6(log))
        return -1;

    /* create and write .add file */
    FUNC10(log->end, ".add");
    fd = FUNC8(log->path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd < 0)
        return -1;
    ret = (size_t)FUNC11(fd, data, len) != len;
    if (ret | FUNC1(fd))
        return -1;
    FUNC7(log);

    /* mark log file with append in progress */
    if (FUNC5(log, APPEND_OP))
        return -1;
    FUNC0(8);

    /* append data (clears mark) */
    if (FUNC3(log, data, len))
        return -1;

    /* check to see if it's time to compress -- if not, then done */
    if (((log->last - log->first) >> 10) + (log->stored >> 10) < TRIGGER)
        return 0;

    /* time to compress */
    return FUNC2(log);
}