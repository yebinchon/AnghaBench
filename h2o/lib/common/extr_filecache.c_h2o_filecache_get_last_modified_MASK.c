#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tm {int dummy; } ;
struct TYPE_6__ {char* str; struct tm gm; } ;
struct TYPE_5__ {int /*<<< orphan*/  st_mtime; } ;
struct TYPE_7__ {int fd; TYPE_2__ _last_modified; TYPE_1__ st; } ;
typedef  TYPE_3__ h2o_filecache_ref_t ;

/* Variables and functions */
 scalar_t__ H2O_TIMESTR_RFC1123_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__) ; 

struct tm *FUNC4(h2o_filecache_ref_t *ref, char *outbuf)
{
    FUNC0(ref->fd != -1);
    if (ref->_last_modified.str[0] == '\0') {
        FUNC1(&ref->st.st_mtime, &ref->_last_modified.gm);
        FUNC2(ref->_last_modified.str, &ref->_last_modified.gm);
    }
    if (outbuf != NULL)
        FUNC3(outbuf, ref->_last_modified.str, H2O_TIMESTR_RFC1123_LEN + 1);
    return &ref->_last_modified.gm;
}