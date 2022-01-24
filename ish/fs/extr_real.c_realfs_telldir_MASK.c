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
struct fd {int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fd*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

unsigned long FUNC2(struct fd *fd) {
    FUNC0(fd);
    return FUNC1(fd->dir);
}