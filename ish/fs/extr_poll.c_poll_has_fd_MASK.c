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
struct poll {int dummy; } ;
struct fd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct poll*,struct fd*) ; 

bool FUNC1(struct poll *poll, struct fd *fd) {
    return FUNC0(poll, fd) != NULL;
}