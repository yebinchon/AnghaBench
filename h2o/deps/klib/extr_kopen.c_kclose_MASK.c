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
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ pid; } ;
typedef  TYPE_1__ koaux_t ;

/* Variables and functions */
 scalar_t__ KO_PIPE ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int FUNC2(void *a)
{
	koaux_t *aux = (koaux_t*)a;
	if (aux->type == KO_PIPE) {
		int status;
		pid_t pid;
		pid = FUNC1(aux->pid, &status, WNOHANG);
		if (pid != aux->pid) FUNC0(aux->pid, 15);
	}
	return 0;
}