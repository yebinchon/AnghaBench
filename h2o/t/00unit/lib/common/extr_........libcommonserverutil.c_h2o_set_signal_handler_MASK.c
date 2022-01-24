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
struct sigaction {void (* sa_handler ) (int) ;int /*<<< orphan*/  sa_mask; } ;
typedef  int /*<<< orphan*/  action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(int signo, void (*cb)(int signo))
{
    struct sigaction action;

    FUNC0(&action, 0, sizeof(action));
    FUNC2(&action.sa_mask);
    action.sa_handler = cb;
    FUNC1(signo, &action, NULL);
}