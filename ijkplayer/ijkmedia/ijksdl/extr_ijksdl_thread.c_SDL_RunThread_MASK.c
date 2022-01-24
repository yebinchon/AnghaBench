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
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  retval; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ SDL_Thread ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6(void *data)
{
    SDL_Thread *thread = data;
    FUNC0("SDL_RunThread: [%d] %s\n", (int)FUNC2(), thread->name);
    FUNC4(FUNC3(), thread->name);
    thread->retval = thread->func(thread->data);
#ifdef __ANDROID__
    SDL_JNI_DetachThreadEnv();
#endif
    return NULL;
}