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
struct statbuf {int mode; } ;
struct fd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_PWD ; 
 struct fd* FUNC0 (int) ; 
 int /*<<< orphan*/  O_RDONLY_ ; 
 int S_IFDIR ; 
 int _ENOTDIR ; 
 struct fd* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,struct statbuf*,int) ; 

__attribute__((used)) static struct fd *FUNC3(const char *path) {
    struct statbuf stat;
    int err = FUNC2(AT_PWD, path, &stat, true);
    if (err < 0)
        return FUNC0(err);
    if (!(stat.mode & S_IFDIR))
        return FUNC0(_ENOTDIR);

    return FUNC1(path, O_RDONLY_, 0);
}