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
struct fs_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PATH ; 
 int FUNC0 (struct fs_ops const*,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 

int FUNC3(const struct fs_ops *fs, const char *source) {
    char source_realpath[MAX_PATH + 1];
    if (FUNC2(source, source_realpath) == NULL)
        return FUNC1();
    int err = FUNC0(fs, source_realpath, "", 0);
    if (err < 0)
        return err;
    return 0;
}