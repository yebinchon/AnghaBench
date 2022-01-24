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
struct task {int dummy; } ;
struct pid {struct task* task; } ;
typedef  int /*<<< orphan*/  dword_t ;

/* Variables and functions */
 struct pid* FUNC0 (int /*<<< orphan*/ ) ; 

struct task *FUNC1(dword_t id) {
    struct pid *pid = FUNC0(id);
    if (pid == NULL)
        return NULL;
    struct task *task = pid->task;
    return task;
}