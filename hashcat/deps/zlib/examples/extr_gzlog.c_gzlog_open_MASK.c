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
struct log {int fd; struct log* path; struct log* end; struct log* id; } ;
typedef  struct log gzlog ;

/* Variables and functions */
 char* LOGID ; 
 int /*<<< orphan*/  FUNC0 (struct log*) ; 
 scalar_t__ FUNC1 (struct log*) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct log*,char*) ; 
 size_t FUNC4 (char*) ; 

gzlog *FUNC5(char *path)
{
    size_t n;
    struct log *log;

    /* check arguments */
    if (path == NULL || *path == 0)
        return NULL;

    /* allocate and initialize log structure */
    log = FUNC2(sizeof(struct log));
    if (log == NULL)
        return NULL;
    FUNC3(log->id, LOGID);
    log->fd = -1;

    /* save path and end of path for name construction */
    n = FUNC4(path);
    log->path = FUNC2(n + 9);              /* allow for ".repairs" */
    if (log->path == NULL) {
        FUNC0(log);
        return NULL;
    }
    FUNC3(log->path, path);
    log->end = log->path + n;

    /* gain exclusive access and verify log file -- may perform a
       recovery operation if needed */
    if (FUNC1(log)) {
        FUNC0(log->path);
        FUNC0(log);
        return NULL;
    }

    /* return pointer to log structure */
    return log;
}