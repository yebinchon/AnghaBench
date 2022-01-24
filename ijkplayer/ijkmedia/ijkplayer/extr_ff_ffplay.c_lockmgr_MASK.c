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
typedef  enum AVLockOp { ____Placeholder_AVLockOp } AVLockOp ;

/* Variables and functions */
#define  AV_LOCK_CREATE 131 
#define  AV_LOCK_DESTROY 130 
#define  AV_LOCK_OBTAIN 129 
#define  AV_LOCK_RELEASE 128 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void **mtx, enum AVLockOp op)
{
    switch (op) {
    case AV_LOCK_CREATE:
        *mtx = FUNC0();
        if (!*mtx) {
            FUNC5(NULL, AV_LOG_FATAL, "SDL_CreateMutex(): %s\n", FUNC2());
            return 1;
        }
        return 0;
    case AV_LOCK_OBTAIN:
        return !!FUNC3(*mtx);
    case AV_LOCK_RELEASE:
        return !!FUNC4(*mtx);
    case AV_LOCK_DESTROY:
        FUNC1(*mtx);
        return 0;
    }
    return 1;
}