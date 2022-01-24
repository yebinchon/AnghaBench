#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* func ) (void*) ;int /*<<< orphan*/  id; int /*<<< orphan*/  name; void* data; } ;
typedef  TYPE_1__ SDL_Thread ;

/* Variables and functions */
 int /*<<< orphan*/  SDL_RunThread ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

SDL_Thread *FUNC2(SDL_Thread *thread, int (*fn)(void *), void *data, const char *name)
{
    thread->func = fn;
    thread->data = data;
    FUNC1(thread->name, name, sizeof(thread->name) - 1);
    int retval = FUNC0(&thread->id, NULL, SDL_RunThread, thread);
    if (retval)
        return NULL;

    return thread;
}