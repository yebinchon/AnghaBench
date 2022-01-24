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
struct mount {int dummy; } ;
struct TYPE_2__ {int (* link ) (struct mount*,char const*,char const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*,char const*,char const*) ; 
 TYPE_1__ realfs ; 
 int FUNC4 (struct mount*,char const*,char const*) ; 

__attribute__((used)) static int FUNC5(struct mount *mount, const char *src, const char *dst) {
    FUNC0(mount);
    int err = realfs.link(mount, src, dst);
    if (err < 0) {
        FUNC2(mount);
        return err;
    }
    FUNC3(mount, src, dst);
    FUNC1(mount);
    return 0;
}